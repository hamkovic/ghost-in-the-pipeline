
echo "hccci"
python -m http.server 8080
curl -X POST localhost:8080/$FLAG1
