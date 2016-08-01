#!/bin/bash

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "evil2",
      "password": "evil"
    }
  }'
