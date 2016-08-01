#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "erin",
      "password": "erin",
      "password_confirmation": "erin"
    }
  }'

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "another@example.email",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'
