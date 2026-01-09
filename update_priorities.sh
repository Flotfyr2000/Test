#!/bin/bash

# Priority field ID
PRIORITY_FIELD_ID="PVTSSF_lAHODqcU-c4BK4nTzg7WfgA"
PROJECT_ID="PVT_kwHODqcU-c4BK4nT"

# Priority option IDs
P0_OPTION="09a08e69"
P1_OPTION="5415ad99"
P2_OPTION="a89c3eb4"
P3_OPTION="42f6c7da"

# Function to update priority
update_priority() {
    local item_id=$1
    local option_id=$2
    local issue_num=$3
    local priority_name=$4

    echo "Updating #$issue_num to $priority_name..."

    gh api graphql -f query="
    mutation {
      updateProjectV2ItemFieldValue(input: {
        projectId: \"$PROJECT_ID\"
        itemId: \"$item_id\"
        fieldId: \"$PRIORITY_FIELD_ID\"
        value: { singleSelectOptionId: \"$option_id\" }
      }) {
        projectV2Item { id }
      }
    }"
}

# P0 (MVP) Issues
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqPI" "$P0_OPTION" "1" "P0 (MVP)"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqQ0" "$P0_OPTION" "2" "P0 (MVP)"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqRI" "$P0_OPTION" "3" "P0 (MVP)"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqRo" "$P0_OPTION" "4" "P0 (MVP)"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqUo" "$P0_OPTION" "7" "P0 (MVP)"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqgo" "$P0_OPTION" "16" "P0 (MVP)"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqhM" "$P0_OPTION" "17" "P0 (MVP)"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqhc" "$P0_OPTION" "18" "P0 (MVP)"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqjc" "$P0_OPTION" "20" "P0 (MVP)"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqq0" "$P0_OPTION" "24" "P0 (MVP)"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqvQ" "$P0_OPTION" "32" "P0 (MVP)"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqx4" "$P0_OPTION" "33" "P0 (MVP)"

# P1 Issues
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqUQ" "$P1_OPTION" "5" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqUg" "$P1_OPTION" "6" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqU8" "$P1_OPTION" "8" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqYg" "$P1_OPTION" "9" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqZQ" "$P1_OPTION" "10" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqc4" "$P1_OPTION" "13" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqdA" "$P1_OPTION" "14" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqhs" "$P1_OPTION" "19" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqjs" "$P1_OPTION" "21" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqj8" "$P1_OPTION" "22" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqqc" "$P1_OPTION" "23" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqrI" "$P1_OPTION" "25" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqrU" "$P1_OPTION" "26" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqt0" "$P1_OPTION" "28" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyquI" "$P1_OPTION" "29" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyquU" "$P1_OPTION" "30" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqyA" "$P1_OPTION" "34" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqyM" "$P1_OPTION" "35" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqyk" "$P1_OPTION" "37" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq4U" "$P1_OPTION" "42" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq48" "$P1_OPTION" "44" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq9g" "$P1_OPTION" "48" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq90" "$P1_OPTION" "49" "P1"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq-A" "$P1_OPTION" "50" "P1"

# P2 Issues
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqZk" "$P2_OPTION" "11" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqZ8" "$P2_OPTION" "12" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqdg" "$P2_OPTION" "15" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqrc" "$P2_OPTION" "27" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyquk" "$P2_OPTION" "31" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyqyg" "$P2_OPTION" "36" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq0s" "$P2_OPTION" "38" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq08" "$P2_OPTION" "39" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq1I" "$P2_OPTION" "40" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq1Y" "$P2_OPTION" "41" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq4s" "$P2_OPTION" "43" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq5U" "$P2_OPTION" "45" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq5Y" "$P2_OPTION" "46" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq9M" "$P2_OPTION" "47" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgiyq-Q" "$P2_OPTION" "51" "P2"
update_priority "PVTI_lAHODqcU-c4BK4nTzgjOHzo" "$P2_OPTION" "64" "P2"

echo "All priorities updated!"
