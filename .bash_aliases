alias j8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8); java -version"
alias j11="export JAVA_HOME=$(/usr/libexec/java_home -v 11); java -version"
alias j17="export JAVA_HOME=$(/usr/libexec/java_home -v 17); java -version"

alias mvi="mvn clean install"
alias mvis="mvi -DskipTests"

alias letsgo='$HOME/myspace/shell-scripting/letsgo.sh'

# vim
alias zshrc='vim ~/.zshrc'
alias src='source ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias ideavim='vim ~/.ideavimrc'

# neovim
alias nvrc='nvim ~/.config/nvim/init.lua'
alias nvrck='nvim ~/.config/nvim/lua/keymaps.lua'
alias v='nvim .'

alias otg='$HOME/space/shell-scripting/ofg/otg.sh'

alias unsafechr='open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security --no-default-browser-check'

alias ls='eza'
alias ll='eza -la'
alias la='eza -a'
alias lt='eza -T'

alias aliases='vim ~/.bash_aliases'

# alias myip="ifconfig en0 | awk '/inet / {print $2}'"
# set IP=ifconfig en0 | awk '/inet / {print $2}'

# '-w' -> word
# '-v' -> invert matching pattern
# alias frun="flutter run --flavor default --dart-define=SERVICE_URL=http://$(ifconfig | grep -w inet | grep -v 127.0.0.1 | awk '{print $2}'):8080/api/v1"

# FUNCTIONS -- {{{

function mkcd() {
  mkdir -p "$@" && cd "$_";
}

function buildclient() {
    PROJECT_NAME=$1
    BUILD_PROFILE=$2
    mvn clean install -P ${PROJECT_NAME}-${BUILD_PROFILE} -pl ${PROJECT_NAME}_client
}

function sal() {
  source $HOME/.bash_aliases
}

function frun() {
    CURR_DIR=$(basename $(pwd))
    (cd ${CURR_DIR}_client && flutter run --flavor default $@)
}

# }}}

# GIT -- {{{

alias gf="git fetch --prune"
alias gl="git pull"
alias gp="git push"
alias gst="git status"
alias gss="git status --short"
alias gcam="git commit --all --message"
# checkout
alias gco="git checkout"
alias gc-="git checkout -"
alias gcd="git checkout develop"
alias gcm="git checkout master"
alias gcb="git checkout -b"
# reset
alias grhh="git reset --hard"
alias grhs="git reset --soft"

# }}}
