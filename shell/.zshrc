# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/liam/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Function to add a directory to PATH if it's not already in PATH
add_to_path_if_not_exists() {
    if [[ ":$PATH:" != *":$1:"* ]]; then
        path+=("$1")
    fi
}

# Adding paths conditionally
add_to_path_if_not_exists "/usr/local/opt/libpq/bin"
add_to_path_if_not_exists "/usr/local/bin"
add_to_path_if_not_exists "/home/linuxbrew/.linuxbrew/bin"
add_to_path_if_not_exists "$HOME/.local/bin"
add_to_path_if_not_exists "$HOME/go/bin"
add_to_path_if_not_exists "$HOME/.cargo/bin"
add_to_path_if_not_exists "$HOME/.cargo/bin"

# Share a target dir for all cargo projects
export CARGO_TARGET_DIR="$HOME/.cargo-target"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    macos
    docker
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Source ZSH
source $ZSH/oh-my-zsh.sh

# Git aliases
alias gpod="git pull origin development"
alias gp="git pull"
alias gpo="git push origin"
alias gcm="git checkout main"

# Other aliases
alias j="just"
alias k="kubectl"
alias ka="kubectl apply -k ."
alias ll="eza -la"
alias t="terraform"
alias vim="nvim"
alias cd="z"
alias cat="bat -p"

# Additonal Sourcing
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
