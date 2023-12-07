#!/bin/bash

# Define the key-value pair to add
new_key=$1
new_value=$2

secret_path="../../../config/stage/terraform/eu-west-1/secrets.auto.tfvars"
# Check if the key already exists in the file
  # If the key does not exist, add it to the file
awk -i inplace -v key="$new_key" -v value="$new_value" \
  'BEGIN { FS = OFS = " = " } $1 == "secrets" { found = 1 } \
  found && /^}/ { print "\t\"" key "\" = \"" value "\",\n"; found = 0 } 1' \
  ${secret_path}
echo "Added key $new_key to secrets.auto.tfvars"