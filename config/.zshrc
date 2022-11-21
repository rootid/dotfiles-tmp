# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/vmat/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws)
# plugins=(git macos aws)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Sourcing aliases
ROOT_DIR=~

# Workflow
source $ROOT_DIR/workflow/functions.sh

source $ROOT_DIR/firefox/aliases.sh

source $ROOT_DIR/ack/aliases.sh

source $ROOT_DIR/tmux/aliases.sh

source $ROOT_DIR/docker/aliases.sh

source $ROOT_DIR/bash/aliases.sh

source $ROOT_DIR/java/aliases.sh
source $ROOT_DIR/java/functions.sh

source $ROOT_DIR/git/aliases.sh
# https://stackoverflow.com/questions/28028740/git-tab-completion-in-zsh-throwing-errors
#source $ROOT_DIR/git/git-completion.zsh

source $ROOT_DIR/ssh/functions.zsh

# Bookmark tool
source $ROOT_DIR/buku/aliases.zsh
source $ROOT_DIR/buku/functions.zsh

# distractions

## gtd tools
source $ROOT_DIR/boom/aliases.zsh
source $ROOT_DIR/boom/functions.zsh

# gcalcli
source $ROOT_DIR/gcalcli/functions.sh

# Taskwarrior
source $ROOT_DIR/task-war/functions.zsh
source $ROOT_DIR/task-war/aliases.zsh

# Watson
source $ROOT_DIR/watson/functions.zsh

# Video
source $ROOT_DIR/video-utils/functions.zsh

# Googler
# source $ROOT_DIR/googler/googler-completion.zsh
source $ROOT_DIR/googler/googler_at

# For work only
source $ROOT_DIR/work/pp-work.zsh

# Wiki dictionary
source $ROOT_DIR/wkdict/aliases.zsh

# GPG
source $ROOT_DIR/gpg/functions.zsh

# Font
source $ROOT_DIR/fonts/functions.zsh

# brew
source $ROOT_DIR/brew/functions.zsh

# GIT
source $ROOT_DIR/git/functions.zsh

# GIT Crypt
source $ROOT_DIR/git-crypt/functions.sh

# OS utils
source $ROOT_DIR/os_utils/functions.sh

# Toggle
source $ROOT_DIR/toggl/functions.sh

# K8
source $ROOT_DIR/k8/kube_cluster_functions.sh
source $ROOT_DIR/k8/kube_functions.sh

# getPocket
source $ROOT_DIR/getpocket/functions.sh

# Real GTD
source $ROOT_DIR/todo/functions.sh

# Freedom
source $ROOT_DIR/freedom/functions.zsh

CUSTOM_BIN=$HOME/dotfiles/bin
CUSTOM_UTIL=$HOME/dotfiles/util
export PATH=$CUSTOM_BIN:$CUSTOM_UTIL:$PATH

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

HISTSIZE=10000000
SAVEHIST=10000000

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
#setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt hist_ignore_space
setopt hist_ignore_all_dups
# following should be turned off, if sharing history via setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY # Write to the history file immediately, not when the shell exits.

# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
HISTFILE=~/.zsh_eternal_history

eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.7.2

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "/Users/vmat/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/vmat/.sdkman/bin/sdkman-init.sh"

export PATH="/usr/local/sbin:$PATH"

## NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Created by `pipx` on 2021-12-11 04:40:14
export PATH="$PATH:/Users/vmat/Library/Python/3.9/bin"

# Created by `pipx` on 2021-12-11 04:40:26
export PATH="$PATH:/Users/vmat/dotfiles/config/.local/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable bazel Autocomplete
#zstyle :compinstall filename '/home/tradical/.zshrc'
autoload -Uz compinit
#compinit
#
#
# Kubectl auto completion
# source <(kubectl completion zsh)  # setup autocomplete in zsh into the current shell
# add autocomplete permanently to your zsh shell
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vmat/gen-next/code/bdp/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vmat/gen-next/code/bdp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vmat/gen-next/code/bdp/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vmat/gen-next/code/bdp/google-cloud-sdk/completion.zsh.inc'; fi


# To fix zsh security issue
ZSH_DISABLE_COMPFIX=true

# emulate bash PROMPT_COMMAND (only for zsh)
precmd() { eval "$PROMPT_COMMAND" }
## open new terminal in same dir
PROMPT_COMMAND='pwd > "${HOME}/.cwd"'
[[ -f "${HOME}/.cwd" ]] && cd "$(< ${HOME}/.cwd)"
