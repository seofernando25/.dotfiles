#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

# fer@fer : [~] > (commnad)
PS1="\u@\h :\[\e[1;32m\] [\w] > \[\e[0m\]"

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

#shopt
shopt -s autocd  # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend     # do not overwrite history
shopt -s expand_aliases # expand aliases

source ~/.aliases
source ~/.profile
# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# fnm
export PATH="/home/fer/.local/share/fnm:$PATH"
eval "$(fnm env)"
. "$HOME/.cargo/env"

# pnpm
export PNPM_HOME="/home/fer/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# Turso
export PATH="/home/fer/.turso:$PATH"

# Load Angular CLI autocompletion.
source <(ng completion script)
