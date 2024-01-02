PS1='%F{yellow}%D{%L:%M:%S}%f %1~ %# '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export PATH="$JAVA_HOME:$PATH"

# Maven
export MVN_HOME='/Users/thaniel/prog/maven'
export PATH="$MVN_HOME/bin:$PATH"

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk

# MySQL
export MYSQL_HOME=/usr/local/mysql
export PATH=$MYSQL_HOME/bin:$PATH

# Flutter
export PATH=$PATH:/Users/thaniel/prog/flutter/bin

#Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"

### FUNCTIONS ###
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

###############

if [ -z "$INTELLIJ_ENVIRONMENT_READER" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

### Shell configuration

eval "$(zoxide init zsh)"
