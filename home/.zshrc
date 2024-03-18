export PATH=$HOME/.cargo/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/libpq/bin:$PATH"
path+=('/opt/homebrew/bin/')
eval "$(starship init zsh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
path+=("/opt/homebrew/opt/mysql-client/bin:$PATH")

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    macos
    docker
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Source oh my ZSH
source $ZSH/oh-my-zsh.sh

# Git aliases
alias gpod="git pull origin development"
alias gp="git pull"
alias gpo="git push origin"
alias gcm="git checkout main"
alias npm="pnpm"
alias npx="pnpx"

alias lg="lazygit"
alias j="just"
alias k="kubectl"
alias ka="kubectl apply -k ."

alias ll="eza -la"
alias vim="nvim"

# Tmux aliases
alias tm="tmux"
alias tml="tmux list-sessions"
alias tma="tmux attach-session"
alias tmat="tmux attach-session -t"

#  Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"

# Go vars
export GOPATH="$HOME/go"
path+=("$GOPATH/bin")
export GOBIN="$HOME/go/bin"
export GOPRIVATE=”dev.azure.com”

# pnpm
export PNPM_HOME="/Users/dt41nb/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Wasmer
export WASMER_DIR="$HOME/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
export OPENSSL_DIR="/opt/homebrew/opt/openssl@3"

eval "$(atuin init zsh)"
