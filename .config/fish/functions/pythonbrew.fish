function pythonbrew -d 'pythonbrew enVironment Manager'
  # run pythonbrew and capture the resulting environment
  set -l pythonbrew_path ~/.config/fish/_pythonbrew_path_.fish
  set -l env_file (mktemp -t rvm.fish.XXXXXXXXXX)
  bash -c 'source .pythonbrew/etc/bashrc; pythonbrew "$@"; status=$?; env > "$0"; exit $status' $env_file $argv

  # apply pythonbrew_* and *PATH variables from the captured environment
  grep '^PYTHONPATH\|^PATH' $env_file | sed '/^[^=]*PATH/y/:/ /; s/^/set -xg /; s/=/ /; s/$/ ;/; s/(//; s/)//' > (echo $pythonbrew_path)
  and eval (cat $pythonbrew_path)

  # clean up
  rm -f $env_file
end
