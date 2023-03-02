export PATH=$HOME/.cargo/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/libpq/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    macos
)

# Source ZSH
source $ZSH/oh-my-zsh.sh

# Git aliases
alias gpod="git pull origin development"
alias gp="git pull"
alias gpo="git push origin"
alias gcm="git checkout main"

# Source Docker
source $HOME/.docker/init-zsh.sh || true # Added by Docker Desktop

#  Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# Go vars
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"