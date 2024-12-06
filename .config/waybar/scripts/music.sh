#!/bin/bash

playerctl metadata --format '󰎈 {{trunc(title, 30)}} - {{trunc(artist, 30)}}'
