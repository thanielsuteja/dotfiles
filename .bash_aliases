alias j11="sdk use java 11.0.22-tem"
alias j17="sdk use java 17.0.11-tem"

alias zshrc='nvim ~/.zshrc'
alias src='source ~/.zshrc'

alias vimrc='nvim ~/.vimrc'
alias ideavim='nvim ~/.ideavimrc'

# neovim
alias nvrc='_open_nvim_config'
alias nvrck='_open_nvim_config lua/keymaps.lua'
alias v='nvim .'
alias scratch='nvim $HOME/.temp.md'

# alias unsafechr='open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security --no-default-browser-check'

alias ls='eza'
alias ll='ls -la'
alias la='ls -a'
alias lt='ls -T'

# alias cat='bat'

alias lg='lazygit'

alias aliases='nvim ~/.bash_aliases'

# FUNCTIONS -- {{{

function mkcd() {
  mkdir -p "$@" && cd "$_";
}

function sal() {
  source $HOME/.bash_aliases
}

## open your note
function n() {
    (cd $HOME/Vault && nvim ${1:-'.'})
}
alias todo="n ii/TODO.md"

function _open_nvim_config() {
    (cd ~/.config/nvim && nvim ${1:-'.'})
}

# }}}

# GIT -- {{{

# checkout
alias gco="git checkout"
alias gc-="git checkout -"
alias gcd="git checkout develop"
alias gcm="git checkout master || git checkout main"
alias gcb="git checkout -b"

# reset
alias grhh="git reset --hard"
alias grhs="git reset --soft"

# branch
alias gcur="git branch --show-current"
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gbD="git branch -D"

# log
alias glol="git lg"
alias glola="git lga"

#others
alias gf="git fetch --prune"
alias gl="git pull"
alias gp="git push"
alias gst="git status"
alias gss="git status --short"
alias gcam="git commit --all --message"
alias gce="git commit --allow-empty -m \"trigger build\""

# }}}
