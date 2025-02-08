#!/bin/sh

current_task=$(task export active | jq '.[] | .description')

task_shorten="${current_task:0:20}"

echo '{"text": " '$task_shorten'", "tooltip": "'$current_task'"}'
