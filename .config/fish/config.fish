####################
# Rueshyna
####################
# 2010/08/17
###################

set -u CLASSPATH
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set PATH $PATH /usr/texbin /opt/local/bin /opt/local/sbin /opt/local/share/man ~/bin

function fish_prompt -d 'custom prompt'
  set -x TERM xterm-256color
  prompt.rb
end

set -x PROMPT_SHELL fish

##### Function #####

function confish
  vim ~/.config/fish/config.fish
end

