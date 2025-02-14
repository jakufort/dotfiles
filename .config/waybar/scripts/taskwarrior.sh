#!/bin/sh

name=$(task export active | jq -r '.[] | .description')

if [[ -z "${name}" ]]; then
  echo '{"text":""}'
  return 0
fi

echo '{"text": " '$name'", "tooltip": "'$name'"}'
