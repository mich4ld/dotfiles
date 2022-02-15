# Created by newuser for 5.8
export EDITOR=nvim
export MANPAGER=most

# Repalce editors with neovim
alias vim='$EDITOR'
alias vi='$EDITOR'
alias edit='$EDITOR'

# Useful aliases
alias ls='exa -l --icons'
alias mkdir='mkdir -pv'
alias rm='rm -i'
alias c='clear'
alias weather='curl wttr.in/Warsaw'

# Development aliases
alias d='docker'
alias dc='docker-compose'
alias kubectl='minikube kubectl -- '
alias k='kubectl'

rxfetch
eval "$(starship init zsh)"
