curl --include --request POST http://localhost:3000/profiles \
--header "Authorization: Token token=BAhJIiVmMDMzY2NjOGMyZjUwN2ViZGY2NzMwOGI1ZDBlMTAwZgY6BkVG--d55eb7c70fc22bc116b2ebfc5ab913c3409a9266" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "name": "Erin Sullivan",
      "bio": "I am cool and like to travel yo 2222."
    }
  }'

  curl --include --request GET http://localhost:3000/profiles \
  --header "Authorization: Token token=BAhJIiUxOWUzODg4MDY0ZjhhMmQ0YzYxYTg5ZGE5NmYwZmE4NwY6BkVG--4c22dccbff65e3a6c07109e750afee3eaae3f396" \


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
        "descriptor": "adventure"
      }
    }'
