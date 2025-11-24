#!/bin/sh

tasks=$(task status:pending export | jq -r '.[] | .description')

escaped_new_lines=$(echo "$tasks" | sed -z 's/\n/\\n/g')

echo '{"text": "todos", "tooltip": "'$escaped_new_lines'"}'
