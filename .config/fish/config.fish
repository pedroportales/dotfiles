#!/usr/bin/fish

# ################################ #
# Config writed by Pedro Portales  #
# ################################ #

set fish_color_autosuggestion brwhite
set fish_color_search_match --background=brblue
set fish_color_match --background=brblue
set fish_color_selection --background=bryellow
set fish_pager_color_description green
set fish_pager_color_prefix blue

function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o cyan)
  set -g red (set_color -o red)
  set -g blue (set_color -o blue)
  set -l green (set_color -o green)
  set -g normal (set_color normal)
  set -g yellow (set_color yellow)

  set -g whitespace ' '

  set -l cwd $blue [(prompt_pwd)]

  echo -n -s \n$cwd (fish_git_prompt) $green $whitespace [(whoami)@(cat /etc/hostname)]  

  if test $last_status = 0
    printf "\n$green~ ❯"
  else
    printf "\n$red✖ $green❯"
  end

  echo -n -s $status_indicator $whitespace
end

#function fish_right_prompt
#    set -l cwd $blue [(basename (prompt_pwd))]
#
#    printf '%s' $cwd (fish_git_prompt) ' $ '
#end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
