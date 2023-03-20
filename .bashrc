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
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases

source ~/.aliases
source ~/.profile

_outstem_yargs_completions()
{
    local cur_word args type_list
    cur_word="${COMP_WORDS[COMP_CWORD]}"
    args=("${COMP_WORDS[@]}")
    type_list=$(outstem --get-yargs-completions "${args[@]}")
    COMPREPLY=( $(compgen -W "${type_list}" -- ${cur_word}) )
    if [ ${#COMPREPLY[@]} -eq 0 ]; then
      COMPREPLY=()
    fi
    return 0
}
complete -o bashdefault -o default -F _outstem_yargs_completions outstem