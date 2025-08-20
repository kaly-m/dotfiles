#######
# ENV #
#######
fpath=($ZDOTDIR/external $fpath)

##################
# AUTOCOMPLETION #
##################

# Vi mode
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char


autoload -U compinit; compinit
# Hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

###############
# zsh options #
###############
# Autocomplete options
setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

# Push the current directory visited on the stack
setopt AUTO_PUSHD

# Do not store duplicate directories in the stack
setopt PUSHD_IGNORE_DUPS

# Do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

###########
# Vi mode #
###########
bindkey -v
export KEYTIMEOUT=1

# Custom cursor (beam / block)
autoload -Uz cursor_mode && cursor_mode

####################
# Special commands #
####################

# Recheck aliases list everytime a Z-shell is being launched
source "$XDG_CONFIG_HOME/zsh/aliases"

# Pimped prompt
autoload -Uz prompt_purification_setup; prompt_purification_setup

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# bd to jump onto parent directories
source ~/dotfiles/zsh/external/bd.zsh

# syntax higlight
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
