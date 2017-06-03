export PATH="/usr/local/bin:$PATH"

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Android SDK
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Yarn
export PATH="$PATH:`yarn global bin`"
