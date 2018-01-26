#!/bin/bash

curl --include --request POST "http://localhost:4741/sightings/" \
--header "Content-type: application/json" \
--data '{
  "sighting": {
    "bird": "'"${BIRD}"'",
    "characteristics": "'"${CHARS}"'",
    "body_color": "'"${COLOR}"'"
  }
}'

echo
