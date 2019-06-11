#!/bin/bash

curl "http://localhost:4741/restaurants/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
echo
