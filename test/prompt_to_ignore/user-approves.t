  $ source "$TESTDIR/../helper.sh"

Adds to IgnorePkg when told yes

  $ write_pacman_conf "[options]"$'\n'"IgnorePkg = foo bar"
  > ignore baz >/dev/null
  > printf "%s\n" "exit_code=$?"
  > cat "$PACMAN_CONF"
  exit_code=0
  [options]
  IgnorePkg = foo bar baz
  #IgnorePkg = foo bar
