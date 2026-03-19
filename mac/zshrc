# Set Variables
# Syntax highlighting for man pages using bat
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Change ZSH Options

# Create Aliases
alias ll="ls -lAFh"
# alias ll="exa -laFh --git"
# alias exa="exa -laFh --git"

# Customize Prompt(s)
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/ (\1)/p'
}

setopt PROMPT_SUBST
export PROMPT='%F{green}%~%F{blue}$(parse_git_branch)%f %# '
export RPROMPT='%*'

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
