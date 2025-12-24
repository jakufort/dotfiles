#!/bin/sh

tasks=$(task status:pending export | jq -r '.[] | .description')

if [ -z "$(printf '%s' "$tasks" | tr -d '[:space:]')" ]; then
    echo '{"text":""}'
    return 0
fi

escaped_new_lines=$(echo "$tasks" | sed -z 's/\n/\\n/g')

echo '{"text": "todos", "tooltip": "'$escaped_new_lines'"}'
