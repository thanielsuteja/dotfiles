PS1='%F{yellow}%D{%L:%M:%S}%f %1~ %# '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Java
JAVA_HOME=$(/usr/libexec/java_home -v 11)
PATH="$JAVA_HOME/bin:$PATH"

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

###############

if [ -z "$INTELLIJ_ENVIRONMENT_READER" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

### Shell configuration

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
