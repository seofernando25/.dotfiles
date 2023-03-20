export EDITOR='nano'
export VISUAL='nano'

# Path configuration
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/var/lib/flatpak/exports/bin/:$PATH"
export PATH="$PATH:$(yarn global bin)"

# BROWSER configuration
export BROWSER="com.brave.Browser"
export CHROME_BIN=$BROWSER
export CHROME_PATH=$BROWSER

alias chromium=$BROWSER
alias chromium-browser=$BROWSER
alias google-chrome=$BROWSER

# XDG configuration (/etc/profile.d/flatpak.sh should already do this)
# If for some reason the XDG_DATA_DIRS variable is not set 
# export XDG_DATA_DIRS= "/usr/local/share:$XDG_DATA_DIRS"
# export XDG_DATA_DIRS= "/usr/share:$XDG_DATA_DIRS"
# export XDG_DATA_DIRS= "/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"
# export XDG_DATA_DIRS= "~/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"

# FNM (Node Version Manager)
eval "$(fnm env --use-on-cd)"


# Personal and sensitive information
source ~/.personal