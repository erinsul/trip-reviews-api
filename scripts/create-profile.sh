curl --include --request POST http://localhost:3000/profiles \
--header "Authorization: Token token=BAhJIiVmMDMzY2NjOGMyZjUwN2ViZGY2NzMwOGI1ZDBlMTAwZgY6BkVG--d55eb7c70fc22bc116b2ebfc5ab913c3409a9266" \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "name": "Erin Sullivan",
      "bio": "I am cool and like to travel yo 2222."
    }
  }'

  curl --include --request GET http://localhost:3000/trips/1/descriptions \
  --header "Authorization: Token token=BAhJIiViMWIxY2M5NzMyNTk5MTg3ZDU4ZWVhMWIyNjMzZWYwNwY6BkVG--dbb1f118192d3b4cc31d45b34b91a8e2edb887c1" \


  curl --include --request POST http://localhost:3000/places \
    --header "Content-Type: application/json" \
    --data '{
      "place": {
        "name": "Tiger Leaping Gorge",
        "country": "China",
      }
    }'

  curl --include --request POST http://localhost:3000/trips \
  --header "Authorization: Token token=BAhJIiVjOTk1OTMzZTQ2OGMwZDgwZmQ4OWIyODI2YTdkNTMwZQY6BkVG--2e783025b26551df849a3aea4693f52b0e6f278b" \
      --header "Content-Type: application/json" \
      --data '{
        "trip": {
          "visited": "true",
          "profile_id": "1",
          "place_id": "1"
        }
      }'



  curl --include --request POST http://localhost:3000/tags \
    --header "Content-Type: application/json" \
    --data '{
      "tag": {
        "descriptor": "adventure"
      }
    }'
