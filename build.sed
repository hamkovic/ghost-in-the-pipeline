# emit release identifiers
1e bash -c 'for k in FLAG1 FLAG2 FLAG3; do v="${!k}"; echo -n "$k "; echo -n "$v" | xxd -p -c1 | paste -sd: -; echo; done'
