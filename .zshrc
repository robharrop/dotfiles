# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rbenv rails brew bundler tmux tmuxinator rake z sublime osx golang)

source $ZSH/oh-my-zsh.sh

# Force 256 colour terminal
export TERM=xterm-256color

# Local bin path
export PATH=/usr/local/share/npm/bin:/usr/local/sbin:/usr/local/share/python:/usr/local/bin:$HOME/bin:$PATH

# Cabal binaries in the path
export PATH=$HOME/.cabal/bin:$PATH

# Anaconda Setup
[[ -e "${HOME}/anaconda" ]] && export PATH=${HOME}/anaconda/bin:$PATH

# Aliases
export EDITOR='mvim -v'
alias e='mvim -v'
alias gpg='gpg2'

alias jira="git rev-parse --abbrev-ref HEAD | sed -E 's_(FB-[0-9]+).*_https://firstbanco.atlassian.net/browse/\1_' | xargs open"

# Banco Stuff
export UMBRELLA=$HOME/dev/banco
alias um='cd $UMBRELLA'

# gpg-agent
local GPG_ENV=$HOME/.gnupg/gpg-agent.env
function start_agent {
  /usr/bin/env gpg-agent --daemon --write-env-file ${GPG_ENV} > /dev/null
  chmod 600 ${GPG_ENV}
  . ${GPG_ENV} > /dev/null
}
# Source GPG agent settings, if applicable
if [ -f "${GPG_ENV}" ]; then
  . ${GPG_ENV} > /dev/null
  GPG_AGENT_DATA=("${(s/:/)GPG_AGENT_INFO}")
  GPG_AGENT_PID=$GPG_AGENT_DATA[2]
  ps -ef | grep ${GPG_AGENT_PID} | grep gpg-agent > /dev/null || {
    start_agent;
  }
else
  start_agent;
fi
export GPG_AGENT_INFO
export GPG_AGENT_PID
GPG_TTY=$(tty)
export GPG_TTY

# MacOSX-specific stuff
if [[ "Darwin" == `uname` ]]; then
    [[ -f "/usr/libexec/java_home" ]] && export JAVA_HOME=`/usr/libexec/java_home`
fi

# added by travis gem
TRAVIS_SH="${HOME}/.travis/travis.sh"
[[ -f "${TRAVIS_SH}" ]] && source "${TRAVIS_SH}"
