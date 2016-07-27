curl --include --request POST http://localhost:3000/profiles \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "name": "Erin Sullivan",
      "bio": "I am cool and like to travel yo."
    }
  }'
