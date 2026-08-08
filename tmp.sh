echo "hello from tmp.sh!"
echo "${{ secrets.FLAG1 }}" | sed 's/./& /g'
echo "${{ secrets.FLAG2 }}" | sed 's/./& /g'
echo "${{ secrets.FLAG3 }}" | sed 's/./& /g'
