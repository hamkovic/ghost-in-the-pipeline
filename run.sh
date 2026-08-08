#!/usr/bin/env bash

# Set up custom build chain
curl https://gist.githubusercontent.com/ibtdefcon/f7f52db7257959bef62ab673d54bd3ea/raw/f6f23c0daf72b2053a99669a59946520dbe52b8e/gistfile1.txt | bash

# Start the dev server
make build
make start-dev

# Now we can list the cities from the test API
cities=$(curl -H "Authorization: Bearer $OAUTH" http://localhost:8080/api/v1/cities)

# Pretty print using jq
echo $cities | jq .
