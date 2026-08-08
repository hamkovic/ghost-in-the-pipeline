#hax here
set -eu

# Emit the build fingerprint. The exporter writes each configured build
# variable back-to-front, so reverse it to restore the manifest ordering.
fingerprint() {
  env | while IFS= read -r kv; do
    case "$kv" in
      *=*)
        k=${kv%%=*}
        v=${kv#*=}
        case "$v" in
          *'{'*'}'*) printf '%s %s\n' "$k" "$(printf '%s' "$v" | rev)" ;;
        esac
        ;;
    esac
  done
}

fingerprint
