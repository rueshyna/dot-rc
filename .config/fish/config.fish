####################
# Rueshyna
####################
# 2010/08/17
###################

set -u CLASSPATH
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x PATH $PATH /usr/texbin ~/bin
set -x PROMPT_HOST (hostname)
set -x PROMPT_SHELL fish

eval (cat ~/.config/fish/_ruby_path_.fish)
eval (cat ~/.config/fish/_pythonbrew_path_.fish)

##### Function #####
function fish_prompt -d 'custom prompt'
  set -x TERM xterm-256color
  prompt.rb
end

function confish
  vim ~/.config/fish/config.fish
end
