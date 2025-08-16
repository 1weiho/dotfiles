# ---------- #
# zsh
# ---------- #

# Starship
eval "$(starship init zsh)"

# zsh extensions
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ---------- #
# Environment variables
# ---------- #

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Cursor CLI
export PATH="$HOME/.local/bin:$PATH"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# PHP Composer
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Java 17
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# ---------- #
# alias & functions
# ---------- #

# Open directory in Cursor
function c() {
  if [ $# -eq 0 ]; then
    cursor .
  else
    cursor "$@"
  fi
}

alias wip='git add . && git commit -m "wip"'

# eza (better ls)
alias ll='eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
