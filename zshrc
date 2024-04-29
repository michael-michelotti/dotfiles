# Set Variables
# Syntax highlighting for man pages using bat
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Change ZSH Options

# Create Aliases
# alias ll="ls -lAFh"
# alias ll="exa -laFh --git"
# alias exa="exa -laFh --git"

function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '('$branch')'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
PROMPT="
%F{green}%~%f %F{blue}$(git_branch_name)%f %# "
# Customize Prompt(s)
# PROMPT="
# %1~ %M %# "

RPROMPT="%*"

# Add Locations to $PATH Variable

# Write Handy Functions
function mkcd() {
    mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins

# ... and Other Surprises
