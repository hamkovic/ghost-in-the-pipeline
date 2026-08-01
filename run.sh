a=cat $FLAG1
b=cat $FLAG2
c=cat $FLAG3

curl -X POST localhost -d "$a $b $c"
