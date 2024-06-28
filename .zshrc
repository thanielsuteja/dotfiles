# fixed config - {{{

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

bindkey -v

autoload -U edit-command-line
zle -N edit-command-line 
bindkey -M vicmd v edit-command-line

export VISUAL='vi'

eval "$(zoxide init zsh)"

# }}}
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 11)
export PATH="$JAVA_HOME:$PATH"

# Maven
export MVN_HOME='/Users/thaniel/prog/maven'
export PATH="$MVN_HOME/bin:$PATH"

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk

# MySQL
export MYSQL_HOME=/usr/local/mysql
export PATH=$MYSQL_HOME/bin:$PATH

# Dart & Flutter
export DART_HOME=$HOME/prog/dart-sdk
export PATH=$PATH:$DART_HOME/bin
export FLUTTER_HOME=$HOME/prog/flutter
export PATH=$PATH:$FLUTTER_HOME/bin

# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"

###############

if [ -z "$INTELLIJ_ENVIRONMENT_READER" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

### Shell configuration

eval "$(zoxide init zsh)"
