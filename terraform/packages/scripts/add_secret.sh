#!/bin/bash

# Define the key-value pair to add
new_key=$1
new_value=$2

# Check if the key already exists in the file
if [[grep -qw "\b$new_key\b" secrets.auto.tfvars]]; then
  echo "Key $new_key already exists in secrets.auto.tfvars"
else
  # If the key does not exist, add it to the file
  awk -i inplace -v key="$new_key" -v value="$new_value" \
    'BEGIN { FS = OFS = " = " } $1 == "secrets" { found = 1 } \
    found && /^}/ { print "\t\"" key "\" = \"" value "\",\n"; found = 0 } 1' \
    secrets.auto.tfvars
  echo "Added key $new_key to secrets.auto.tfvars"
fi
