PS1='%F{yellow}%D{%L:%M:%S}%f %1~ %# '

# Java
JAVA_HOME=$(/usr/libexec/java_home -v 11)
PATH=$JAVA_HOME:$PATH

# Maven
MVN_HOME='/Users/thaniel/prog/maven/bin'
PATH=$MVN_HOME:$PATH

# Android
ANDROID_HOME=$HOME/Library/Android/sdk
PATH=$ANDROID_HOME/platform-tools:$PATH
ANDROID_SDK_ROOT=$ANDROID_HOME
ANDROID_NDK_HOME=$ANDROID_HOME/ndk

# MySQL
MYSQL_HOME=/usr/local/mysql
PATH=$MYSQL_HOME/bin:$PATH

# Flutter
PATH=$PATH:/Users/thaniel/prog/flutter/bin

#Ruby
PATH="/usr/local/opt/ruby/bin:$PATH"

### FUNCTIONS ###
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

### ALIASES ###

alias j8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8); java -version"
alias j11="export JAVA_HOME=$(/usr/libexec/java_home -v 11); java -version"
alias j17="export JAVA_HOME=$(/usr/libexec/java_home -v 17); java -version"
alias t10="~/prog/10/bin/catalina.sh"

alias mvni="mvn clean install"
alias mvnis="mvni -DskipTests"

alias letsgo=$HOME/myspace/shell-scripting/letsgo.sh

alias edirc='vim ~/.zshrc'
alias srcrc='source ~/.zshrc'

alias otg=$HOME/myspace/shell-scripting/ofg/otg.sh

alias unsafechr='open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security --no-default-browser-check'

alias ll='ls -la'

# alias myip="ifconfig en0 | awk '/inet / {print $2}'"
# set IP=ifconfig en0 | awk '/inet / {print $2}'

###############

if [ -z "$INTELLIJ_ENVIRONMENT_READER" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
