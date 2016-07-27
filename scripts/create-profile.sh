curl --include --request POST http://localhost:3000/profiles \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "name": "Erin Sullivan",
      "bio": "I am cool and like to travel yo."
    }
  }'

  curl --include --request POST http://localhost:3000/places \
    --header "Content-Type: application/json" \
    --data '{
      "place": {
        "name": "Tiger Leaping Gorge",
        "country": "China",
        "continent": "Asia"
      }
    }'

  curl --include --request POST http://localhost:3000/tags \
    --header "Content-Type: application/json" \
    --data '{
      "tag": {
        "descriptor": "culture"
      }
    }'
