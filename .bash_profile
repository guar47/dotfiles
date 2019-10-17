# For init rbenv
eval "$(rbenv init -)"

# Aliases
alias ls="ls -lhA"

# Bash colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# CLI path colored and showing branch in CLI
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]:\[\033[0;31m\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\[\033[m\]\$ "

# Bash git auto-completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi