# Important env vars for scripts
set -gx EDITOR nvim
set -gx BROWSER firefox
set -gx SHELL /bin/fish
set -gx DENO_INSTALL $HOME/.deno
set -gx PATH /home/$USER/.cargo/bin:$PATH

# Replace editors with neovim
alias vim='$EDITOR'
alias vi='$EDITOR'
alias edit='$EDITOR'

# Useful aliases
alias ls='exa -l --icons'
alias mkdir='mkdir -pv'
alias rm='rm -i'
alias reload='exec fish -l'
alias c='clear'
alias weather="curl wttr.in/Warsaw"

# Development related aliases
alias d='docker'
alias dc='docker-compose'
alias kubectl='minikube kubectl -- '
alias k='kubectl'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    rxfetch   
end

starship init fish | source
