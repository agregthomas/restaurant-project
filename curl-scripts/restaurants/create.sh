#!/bin/bash

curl "http://localhost:4741/restaurants" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "restaurant": {
      "name": "'"${NAME}"'",
      "neighborhood": "'"${NB}"'",
      "address": "'"${ADD}"'",
      "price": "'"${PRICE}"'",
      "category": "'"${CAT}"'",
      "type": "'"${TYPE}"'",
      "food": "'"${FOOD}"'",
      "comments": "'"${COM}"'"
    }
  }'

echo
