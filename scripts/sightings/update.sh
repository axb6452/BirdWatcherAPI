#!/bin/bash

curl --include --request PATCH "http://localhost:4741/sightings/${ID}" \
--header "Content-type: application/json" \
--data '{
  "sighting": {
    "bird": "'"${BIRD}"'",
    "characteristics": "'"${CHARS}"'",
    "body_color": "'"${COLOR}"'"
  }
}'

echo
