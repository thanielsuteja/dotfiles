# fixed configuration -- {{{

export GPG_TTY=$(tty)

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"


autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b %u%c '
setopt PROMPT_SUBST

PROMPT='%F{blue}%~%f %% '
RPROMPT='%F{red}${vcs_info_msg_0_}%f'
# }}}

if [ -f ~/.zle ]; then
    . ~/.zle
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.work_aliases ]; then
    . ~/.work_aliases
fi

if [ -f ~/.env ]; then
    . ~/.env
fi

## Brew
export PATH="$PATH:/opt/homebrew/bin"

## Neovim
export PATH="$PATH:$HOME/Program/nvim/bin"

## Node
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

## Idea
export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/thaniel.suteja/.rd/bin:$PATH"

# sessionmanager
export PATH="/Users/thaniel.suteja/Program/sessionmanager-bundle/bin:$PATH"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export GRANTED_ENABLE_AUTO_REASSUME=true

