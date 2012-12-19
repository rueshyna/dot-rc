function rvm -d 'Ruby enVironment Manager'
  # run RVM and capture the resulting environment
  set -l ruby_path ~/.config/fish/_ruby_path_.fish
  set -l env_file (mktemp -t rvm.fish.XXXXXXXXXX)
  bash -c 'source ~/.rvm/scripts/rvm; rvm "$@"; status=$?; env > "$0"; exit $status' $env_file $argv

  # apply rvm_* and *PATH variables from the captured environment
  grep '^rvm\|^[^=]*PATH\|^GEM_HOME' $env_file | sed '/^[^=]*PATH/y/:/ /; s/^/set -xg /; s/=/ /; s/$/ ;/; s/(//; s/)//' > (echo $ruby_path)
  and eval (cat $ruby_path)

  # clean up
  rm -f $env_file
end
