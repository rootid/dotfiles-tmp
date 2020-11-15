
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export SAVEHIST=
export HISTTIMEFORMAT="[%F %T] "

# https://www.soberkoder.com/better-zsh-history/
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
# following should be turned off, if sharing history via setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
HISTFILE=~/.zsh_eternal_history

# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Rename terminal
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
PS1="%n@mat %~$ "

# Sourcing aliases
DOT_CONF_DIR=~

source $DOT_CONF_DIR/firefox/aliases.sh

source $DOT_CONF_DIR/ack/aliases.sh

source $DOT_CONF_DIR/tmux/aliases.sh

source $DOT_CONF_DIR/docker/aliases.sh

source $DOT_CONF_DIR/bash/aliases.sh

source $DOT_CONF_DIR/java/aliases.sh
source $DOT_CONF_DIR/java/functions.sh

source $DOT_CONF_DIR/git/aliases.sh
# https://stackoverflow.com/questions/28028740/git-tab-completion-in-zsh-throwing-errors
#source $DOT_CONF_DIR/git/git-completion.zsh

source $DOT_CONF_DIR/ssh/functions.zsh

# Bookmark tool
source $DOT_CONF_DIR/buku/aliases.zsh
source $DOT_CONF_DIR/buku/functions.zsh

# distractions

## gtd tools
source $DOT_CONF_DIR/boom/aliases.zsh
source $DOT_CONF_DIR/boom/functions.zsh

# gcalcli
source $DOT_CONF_DIR/gcalcli/functions.zsh

# Taskwarrior
source $DOT_CONF_DIR/task-war/functions.zsh
source $DOT_CONF_DIR/task-war/aliases.zsh

# Watson
source $DOT_CONF_DIR/watson/functions.zsh


# Video
source $DOT_CONF_DIR/video-utils/functions.zsh

# Googler
# source $DOT_CONF_DIR/googler/googler-completion.zsh
source $DOT_CONF_DIR/googler/googler_at

# For work only
source $DOT_CONF_DIR/work/pp-work.zsh

# Wiki dictionary
source $DOT_CONF_DIR/wkdict/aliases.zsh

# GPG
source $DOT_CONF_DIR/gpg/functions.zsh

# GO
export GOPATH=$HOME/go

# FZF settings
# https://github.com/junegunn/fzf#respecting-gitignore
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# https://github.com/junegunn/fzf#layout
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

CUSTOM_BIN=$HOME/dotfiles/bin
CUSTOM_UTIL=$HOME/dotfiles/utils
export PATH=$CUSTOM_BIN:$PATH
export PATH=$CUSTOM_UTIL:$PATH

#source /usr/local/etc/bash_completion.d/password-store

GIT_HUB_WRAPPER_LIB=$HOME/new-wave/git-hub/lib
GIT_HUB_WRAPPER_MAN=$HOME/new-wave/git-hub/man
export PATH="$GIT_HUB_WRAPPER_LIB:$PATH"
export MANPATH="$GIT_HUB_WRAPPER_MAN:$MANPATH"

# https://blog.jez.io/cli-code-review/
# For Git stat and files
export REVIEW_BASE=master
# Review between 'ups/feature-US1125790-FIX-DB' and the current branch
# export REVIEW_BASE=ups/feature-US1125790-FIX-DB git stat
# Review changes made by the last commit of this branch:
# REVIEW_BASE=HEAD^ git stat
# For review use git review or git reviewone
# REVIEW_BASE=master git review

# source /usr/local/opt/autoenv/activate.sh

# vim: ai ts=2 sw=2 et sts=2 ft=sh
