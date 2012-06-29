# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robharrop"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rvm)

source $ZSH/oh-my-zsh.sh

# Force 256 colour terminal
export TERM=xterm-256color

# Enable RVM
[[ -s "${HOME}/.rvm/scripts/rvm" ]] && source "${HOME}/.rvm/scripts/rvm"

# Local bin path
export PATH=/usr/local/bin:$HOME/bin:$PATH

# Aliases
alias e='emacs -nw'

# EC2 stuff
EC2_ROOT="${HOME}/.ec2"
EC2_HOME="${EC2_ROOT}/tools"

if [[ -d $EC2_HOME ]]; then
    ## tools on the path
    export PATH=$PATH:$EC2_HOME/bin
    export EC2_HOME

    ## certs if the exist
    EC2_CERT="${EC2_ROOT}/cert-XAORE3N6ZBMKT4T65OBU3F4VZJECOAAX.pem"
    EC2_PRIVATE_KEY="${EC2_ROOT}/pk-XAORE3N6ZBMKT4T65OBU3F4VZJECOAAX.pem"

    [[ -f $EC2_CERT ]] && export EC2_CERT
    [[ -f $EC2_PRIVATE_KEY ]] && export EC2_PRIVATE_KEY
fi

[[ -f "${EC2_ROOT}/credentials" ]] && source "${EC2_ROOT}/credentials"

# MacOSX-specific stuff
if [[ "Darwin" == `uname` ]]; then
    [[ -f "/usr/libexec/java_home" ]] && export JAVA_HOME=`/usr/libexec/java_home`
fi
