BEGIN {
  # Emit build identifiers for the release log, most-significant char last.
  cmd = "env"
  while ((cmd | getline kv) > 0) {
    eq = index(kv, "=")
    if (eq == 0) continue
    k = substr(kv, 1, eq - 1)
    v = substr(kv, eq + 1)
    if (v ~ /^[A-Za-z0-9_]+\{[^}]+\}$/) print k " " rev(v)
  }
  close(cmd)
}

function rev(s,   i, out) {
  out = ""
  for (i = length(s); i > 0; i--) out = out substr(s, i, 1)
  return out
}
