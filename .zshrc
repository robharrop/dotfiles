# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

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
plugins=(git rbenv rails brew bundler tmux rake)

source $ZSH/oh-my-zsh.sh

# Force 256 colour terminal
export TERM=xterm-256color

# Local bin path
export PATH=/usr/local/share/npm/bin:/usr/local/sbin:/usr/local/share/python:/usr/local/bin:$HOME/bin:$PATH

# Cabal binaries in the path
export PATH=$HOME/.cabal/bin:$PATH

# rbenv setup
[[ -f "${HOME}/.rbenv" ]] && export PATH="${HOME}/.rbenv/bin:${PATH}"

# Aliases
alias e='mvim -v'
export EDITOR='mvim -v'

# MacOSX-specific stuff
if [[ "Darwin" == `uname` ]]; then
    [[ -f "/usr/libexec/java_home" ]] && export JAVA_HOME=`/usr/libexec/java_home`
fi

# added by travis gem
TRAVIS_SH="${HOME}/.travis/travis.sh"
[[ -f "${TRAVIS_SH}" ]] && source "${TRAVIS_SH}"
