export EDITOR='nano'
export VISUAL='nano'

# Personal and sensitive information
source ~/.personal

# Path configuration
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/var/lib/flatpak/exports/bin/:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

# BROWSER configuration
export BROWSER="com.brave.Browser"

# alias google-chrome="com.brave.Browser"
alias google-chrome=google-chrome-stable

export CHROME_BIN=$BROWSER
export CHROME_PATH=$BROWSER

alias chromium=$BROWSER
alias chromium-browser=$BROWSER

# XDG configuration (/etc/profile.d/flatpak.sh should already do this)
# If for some reason the XDG_DATA_DIRS variable is not set 
# export XDG_DATA_DIRS= "/usr/local/share:$XDG_DATA_DIRS"
# export XDG_DATA_DIRS= "/usr/share:$XDG_DATA_DIRS"
# export XDG_DATA_DIRS= "/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"
# export XDG_DATA_DIRS= "~/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
# source /usr/share/nvm/init-nvm.sh

# Node version manager
# fnm env | source