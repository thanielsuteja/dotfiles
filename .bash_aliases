alias j8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8); java -version"
alias j11="export JAVA_HOME=$(/usr/libexec/java_home -v 11); java -version"
alias j17="export JAVA_HOME=$(/usr/libexec/java_home -v 17); java -version"

alias mvi="mvn clean install"
alias mvis="mvni -DskipTests"

alias letsgo='$HOME/myspace/shell-scripting/letsgo.sh'

alias edirc='vim ~/.zshrc'
alias srcrc='source ~/.zshrc'
alias vimrc='source ~/.vimrc'

alias otg='$HOME/myspace/shell-scripting/ofg/otg.sh'

alias unsafechr='open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security --no-default-browser-check'

alias ls='eza'
alias ll='eza -la'
alias la='eza -a'
alias lt='eza -T'

# alias myip="ifconfig en0 | awk '/inet / {print $2}'"
# set IP=ifconfig en0 | awk '/inet / {print $2}'

# GIT -- {{{

alias gst="git status"
alias gss="git status --short"
alias gco="git checkout"
alias gc-="git checkout -"
alias gcb="git checkout -b"
alias gcam="git commit --all --message"

# }}}
