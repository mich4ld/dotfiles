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
alias fd="fd -iH"

# Development aliases
alias d='docker'
alias dc='docker-compose'
alias kubectl='minikube kubectl -- '
alias k='kubectl'

# Useful plugins:
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

function command_not_found_handler {
    local purple='\e[1;35m' bright='\e[0;1m' green='\e[1;32m' reset='\e[0m'
    printf 'zsh: command not found: %s\n' "$1"
    local entries=(
        ${(f)"$(/usr/bin/pacman -F --machinereadable -- "/usr/bin/$1")"}
    )
    if (( ${#entries[@]} ))
    then
        printf "${bright}$1${reset} may be found in the following packages:\n"
        local pkg
        for entry in "${entries[@]}"
        do
            # (repo package version file)
            local fields=(
                ${(0)entry}
            )
            if [[ "$pkg" != "${fields[2]}" ]]
            then
                printf "${purple}%s/${bright}%s ${green}%s${reset}\n" "${fields[1]}" "${fields[2]}" "${fields[3]}"
            fi
            printf '    /%s\n' "${fields[4]}"
            pkg="${fields[2]}"
        done
    fi
}

rxfetch
eval "$(starship init zsh)"
