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

export PATH=$HOME/.cargo/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/libpq/bin:$PATH"

path+=("/home/liam/.local/bin")
path+=('/home/linuxbrew/.linuxbrew/bin')
path+=("$HOME/go/bin")
path+=("$HOME/go/bin")

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
alias k="kubectl"
alias ll="eza -la"
alias vim="nvim"

# Source Docker
# source $HOME/.docker/init-zsh.sh || true # Added by Docker Desktop

#  Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
