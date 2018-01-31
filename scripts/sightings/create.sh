#!/bin/bash

curl "https://glacial-woodland-13268.herokuapp.com/sightings" \
--include \
--request POST \
--header "Content-type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "sighting": {
    "bird": "'"${BIRD}"'",
    "characteristics": "'"${CHARS}"'",
    "body_color": "'"${COLOR}"'"
  }
}'

echo
