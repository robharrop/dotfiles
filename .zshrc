export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

export ALIEN_THEME="blue"

zplug "plugins/git",   from:oh-my-zsh

zplug "eendroroy/alien"

# Then, source plugins and add commands to $PATH
zplug load --verbose
