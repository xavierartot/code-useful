#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Customize to your needs...
export PATH=$PATH:/Applications/MAMP/Library/bin:/Users/xartot/bash-wordpress:/usr/local/bin/node:/Users/xartot/.npm/bin

export WP_CLI_PHP="/Applications/MAMP/bin/php/php5.4.10/bin/php"
#export WP_CLI_PHP="/usr/bin/php"


#open a project
gotoweb(){
  cd /Applications/MAMP/htdocs/$1
}
# autocompletion pour WP_CLI
#source //Users/xartot/scripts/wp-completion.bash
#
# WP-CLI Bash completions http://wp-cli.org/
#autoload bashcompinit
#bashcompinit
# initialize autocomplete here, otherwise functions won't be loaded
# also load compdef so git-completion doesn't complain about no compdef
#autoload -U compinit compdef
#compinit
#source $HOME/.wp-cli/vendor/wp-cli/wp-cli/utils/wp-completion.bash

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="pygmalion"


# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
source $ZSH/oh-my-zsh.sh

#PATH=$PATH:/Applications/MAMP/Library/bin

setopt correctall

# autocompletion git
# source ~/.git-completion.bash


source ~/wp-completion.bash

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    fg
    zle redisplay
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# cdd let you do a cd AND a ls in the same command
function cdd()
{
  if [ "$*" = "" ]
  then
    cd
  else
    cd "$*";
  fi
  dir;
}

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

#Find text in any file
ft() {
  find . -name "$2" -exec grep -il "$1" {} \;
}

