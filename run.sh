#!/usr/bin/env bash


# Start the dev server
make build
make start-dev

# Read and set up the test data
for f in $(ls test_data); do
  HOST=$f
  CONTENTS=$(cat $f)
  echo "$FLAG1 $FLAG2 $FLAG3" > $f
  CONTENTS=$(cat $f)
  curl -X POST -d "$(echo -n $CONTENTS)" "http://$HOST"
done

# Now we can list the cities from the test API
cities=$(curl -H "Authorization: Bearer $OAUTH" http://localhost:8080/api/v1/cities)

# Pretty print using jq
echo $cities | jq .
