#!/bin/bash

# Script to create 3 jj commits with random data for testing

set -e

echo "Creating 3 commits with random data..."

# Create or append to init.txt with random data
for i in {1..3}; do
    random_data=$(openssl rand -hex 16)
    echo "Commit $i: $random_data" >> init.txt
    
    commit_msg="feat(test): commit $i with random data $random_data"
    jj commit -m "$commit_msg"
    
    echo "Created commit $i: $commit_msg"
done

echo ""
echo "Done! Created 3 commits. You can now run:"
echo "  hlx create <name>"
echo "  hlx update"

