# COLOR STRINGS
        RED="\[\033[0;31m\]"
     ORANGE="\[\033[0;33m\]"
     YELLOW="\[\033[0;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[0;34m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
 COLOR_NONE="\[\e[0m\]"

function gitprompt () {
  local gitbranch=$(git branch 2>&1 | grep '\*' | sed -e 's/\* //g')
  if [[ "$gitbranch" != "" ]]; then
    PS1="${BLUE}\h${WHITE} [\u] ${LIGHT_GRAY}\w${YELLOW} (${gitbranch}) ${LIGHT_GRAY}: "
  else
    PS1="${BLUE}\h${WHITE} [\u] ${LIGHT_GRAY}\w${YELLOW} ${LIGHT_GRAY}: "
  fi
}
PROMPT_COMMAND=gitprompt

export PATH="/usr/local/bin:$PATH"

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Android SDK
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
