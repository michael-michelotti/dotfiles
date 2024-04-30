# Set Variables
# Syntax highlighting for man pages using bat
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Change ZSH Options

# Create Aliases
# alias ll="ls -lAFh"
# alias ll="exa -laFh --git"
# alias exa="exa -laFh --git"

# Customize Prompt(s)
function git_branch_name()
{
  local branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ -n $branch ]]; then
    echo " ($branch)"
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

function set_prompt() {
    PROMPT="
%F{green}%~%f%F{blue}$(git_branch_name)%f %# "
}

# Set initial prompt
set_prompt

# Update git branch name when changing directories
function chpwd_update_prompt() {
    set_prompt
}

add-zsh-hook chpwd chpwd_update_prompt

RPROMPT="%*"

# Add Locations to $PATH Variable
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

plugin=(
  pyenv
)

eval "$(pyenv init -)"

# Write Handy Functions
function mkcd() {
    mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins

# ... and Other Surprises
