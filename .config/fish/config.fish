####################
# Rueshyna
####################
# 2010/08/17
###################

set -u CLASSPATH
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
set -gx PATH $PATH /usr/texbin ~/bin /usr/local/sbin
set -gx PROMPT_HOST (hostname)
set -gx PROMPT_SHELL fish
set -gx PYTHONBREW_ROOT /Users/rues/.pythonbrew

eval (cat ~/.config/fish/_ruby_path_.fish)
eval (cat ~/.config/fish/_pythonbrew_path_.fish)

##### Function #####
function fish_prompt -d 'custom prompt'
  set -xg TERM xterm-256color
  prompt.rb
end

function confish
  vim ~/.config/fish/config.fish
end
