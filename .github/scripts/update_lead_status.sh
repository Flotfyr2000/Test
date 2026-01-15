#!/bin/bash

# Lead Contact Status Updater
# Updates "Days Since Contact" and "Contact Status" fields for all leads
# Runs daily via GitHub Actions

set -e

PROJECT_ID="PVT_kwHODqcU-c4BK4nT"
TYPE_FIELD_ID="PVTSSF_lAHODqcU-c4BK4nTzg7x_qM"
LEAD_TYPE_OPTION="28e866a9"
LAST_INTERACTION_FIELD_ID="PVTF_lAHODqcU-c4BK4nTzg71GDE"
DAYS_SINCE_CONTACT_FIELD_ID="PVTF_lAHODqcU-c4BK4nTzg71Gw4"
CONTACT_STATUS_FIELD_ID="PVTSSF_lAHODqcU-c4BK4nTzg71Gzg"

# Contact Status option IDs
NOT_CONTACTED_ID="TBD"    # ⚪ Not Contacted (to be added manually)
RECENT_ID="b9d7f8d1"      # 🟢 0-7 days
WARM_ID="c750b183"        # 🟡 8-14 days
COOLING_ID="e362fb41"     # 🟠 15-30 days
COLD_ID="2854a3ba"        # 🔴 31-60 days
STALE_ID="32d0d3a4"       # ⚫ 60+ days

echo "🔄 Starting lead contact status update..."
echo "Current date: $(date -I)"
echo ""

# Get all leads (Type = Lead)
leads_query=$(cat <<'GRAPHQL'
query($project_id: ID!) {
  node(id: $project_id) {
    ... on ProjectV2 {
      items(first: 100) {
        nodes {
          id
          content {
            ... on Issue {
              number
              title
            }
          }
          fieldValues(first: 20) {
            nodes {
              ... on ProjectV2ItemFieldSingleSelectValue {
                field {
                  ... on ProjectV2FieldCommon {
                    name
                  }
                }
                name
              }
              ... on ProjectV2ItemFieldDateValue {
                date
                field {
                  ... on ProjectV2FieldCommon {
                    name
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
GRAPHQL
)

# Get all project items
items=$(gh api graphql -f query="$leads_query" -f project_id="$PROJECT_ID" --jq '.data.node.items.nodes[]')

# Today's date in seconds since epoch
today=$(date +%s)

updated_count=0
needs_followup_count=0

echo "$items" | jq -c '.' | while read -r item; do
  item_id=$(echo "$item" | jq -r '.id')
  issue_number=$(echo "$item" | jq -r '.content.number // empty')
  issue_title=$(echo "$item" | jq -r '.content.title // empty')

  # Skip if not an issue
  if [ -z "$issue_number" ]; then
    continue
  fi

  # Check if this is a lead
  is_lead=$(echo "$item" | jq -r '.fieldValues.nodes[] | select(.field.name == "Type") | .name' | grep -i "lead" || echo "")

  if [ -z "$is_lead" ]; then
    continue
  fi

  # Get Last Interaction date
  last_interaction=$(echo "$item" | jq -r '.fieldValues.nodes[] | select(.field.name == "Last Interaction") | .date // empty')

  if [ -z "$last_interaction" ]; then
    echo "⚪ #$issue_number: No Last Interaction date - setting to Not Contacted"
    status_id="$NOT_CONTACTED_ID"
    status_name="⚪ Not Contacted"
    days_diff=""
  else
    # Calculate days since last interaction
    last_interaction_seconds=$(date -d "$last_interaction" +%s 2>/dev/null || date -j -f "%Y-%m-%d" "$last_interaction" +%s 2>/dev/null)
    days_diff=$(( (today - last_interaction_seconds) / 86400 ))

    # Determine status based on days
    if [ $days_diff -le 7 ]; then
      status_id="$RECENT_ID"
      status_name="🟢 Recent"
    elif [ $days_diff -le 14 ]; then
      status_id="$WARM_ID"
      status_name="🟡 Warm"
    elif [ $days_diff -le 30 ]; then
      status_id="$COOLING_ID"
      status_name="🟠 Cooling"
    elif [ $days_diff -le 60 ]; then
      status_id="$COLD_ID"
      status_name="🔴 Cold"
      needs_followup_count=$((needs_followup_count + 1))
    else
      status_id="$STALE_ID"
      status_name="⚫ Stale"
      needs_followup_count=$((needs_followup_count + 1))
    fi

    echo "📊 #$issue_number: $days_diff days → $status_name"
  fi

  # Update Days Since Contact (only if we have a value)
  if [ -n "$days_diff" ]; then
    gh api graphql -f query="
      mutation {
        updateProjectV2ItemFieldValue(input: {
          projectId: \"$PROJECT_ID\"
          itemId: \"$item_id\"
          fieldId: \"$DAYS_SINCE_CONTACT_FIELD_ID\"
          value: { number: $days_diff }
        }) {
          projectV2Item { id }
        }
      }" --silent
  fi

  # Update Contact Status
  gh api graphql -f query="
    mutation {
      updateProjectV2ItemFieldValue(input: {
        projectId: \"$PROJECT_ID\"
        itemId: \"$item_id\"
        fieldId: \"$CONTACT_STATUS_FIELD_ID\"
        value: { singleSelectOptionId: \"$status_id\" }
      }) {
        projectV2Item { id }
      }
    }" --silent

  # Add comment if cold/stale and no recent comment
  if [ -n "$days_diff" ] && [ $days_diff -ge 31 ]; then
    # Check if we already commented recently
    recent_comment=$(gh issue view $issue_number --repo Flotfyr2000/MugAIn --json comments --jq '.comments[-1].body // empty' | grep "⚠️ Follow-up needed" || echo "")

    if [ -z "$recent_comment" ]; then
      gh issue comment $issue_number --repo Flotfyr2000/MugAIn --body "⚠️ **Follow-up needed:** No contact in $days_diff days. Please reach out to keep this lead warm!" 2>/dev/null || true
      echo "  💬 Added follow-up comment"
    fi
  fi

  updated_count=$((updated_count + 1))
done

echo ""
echo "✅ Update complete!"
echo "   Updated: $updated_count leads"
echo "   Needs follow-up: $needs_followup_count leads (31+ days)"
