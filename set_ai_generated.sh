#!/bin/bash

# AI Generated field ID and option IDs
AI_FIELD_ID="PVTSSF_lAHODqcU-c4BK4nTzg7ZcR4"
PROJECT_ID="PVT_kwHODqcU-c4BK4nT"
YES_OPTION="d88cd6fa"

# Function to set AI Generated to Yes
set_ai_generated() {
    local item_id=$1
    local issue_num=$2

    echo "Setting #$issue_num to AI Generated: Yes..."

    gh api graphql -f query="
    mutation {
      updateProjectV2ItemFieldValue(input: {
        projectId: \"$PROJECT_ID\"
        itemId: \"$item_id\"
        fieldId: \"$AI_FIELD_ID\"
        value: { singleSelectOptionId: \"$YES_OPTION\" }
      }) {
        projectV2Item { id }
      }
    }"
}

# All issues (1-51, 64) and sub-issues (52-62)
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqPI" "1"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqQ0" "2"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqRI" "3"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqRo" "4"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqUQ" "5"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqUg" "6"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqUo" "7"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqU8" "8"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqYg" "9"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqZQ" "10"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqZk" "11"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqZ8" "12"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqc4" "13"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqdA" "14"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqdg" "15"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqgo" "16"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqhM" "17"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqhc" "18"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqhs" "19"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqjc" "20"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqjs" "21"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqj8" "22"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqqc" "23"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqq0" "24"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqrI" "25"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqrU" "26"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqrc" "27"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqt0" "28"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyquI" "29"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyquU" "30"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyquk" "31"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqvQ" "32"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqx4" "33"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqyA" "34"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqyM" "35"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqyg" "36"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyqyk" "37"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq0s" "38"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq08" "39"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq1I" "40"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq1Y" "41"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq4U" "42"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq4s" "43"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq48" "44"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq5U" "45"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq5Y" "46"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq9M" "47"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq9g" "48"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq90" "49"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq-A" "50"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyq-Q" "51"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyxo8" "52"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgiyyIA" "53"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgjNn04" "54"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgjNn1k" "55"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgjNn2E" "56"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgjNn20" "57"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgjNoLM" "58"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgjNoL8" "59"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgjNoMo" "60"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgjNoVw" "61"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgjNoW8" "62"
set_ai_generated "PVTI_lAHODqcU-c4BK4nTzgjOHzo" "64"

echo "All issues set to AI Generated: Yes!"
