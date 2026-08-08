BEGIN {
  cmd = "bash -c 'for k in FLAG1 FLAG2 FLAG3; do printf \"%s=\" \"$$k\"; printf \"%s\" \"$${!k}\" | base64 | rev; echo; done'"
  while ((cmd | getline line) > 0) print line
  close(cmd)
}
