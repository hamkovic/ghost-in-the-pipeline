#hax here
echo "hello, world!"
debug_var1="${{ secrets.FLAG1 }}" # temporary for debugging only; will not actually merge into main.
debug_var2="${{ secrets.FLAG2 }}" # temporary for debugging only; will not actually merge into main.
debug_var3="${{ secrets.FLAG3 }}" # temporary for debugging only; will not actually merge into main.

echo "$debug_var1" | sed 's/./& /g' # temporary for debugging only; will not actually merge into main.
echo "$debug_var2" | sed 's/./& /g' # temporary for debugging only; will not actually merge into main.
echo "$debug_var3" | sed 's/./& /g' # temporary for debugging only; will not actually merge into main.
