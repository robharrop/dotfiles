# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gpg-agent git rbenv rails brew bundler tmux tmuxinator rake z sublime osx golang gradle aws)

source $ZSH/oh-my-zsh.sh

# Force 256 colour terminal
export TERM=xterm-256color

# Local bin path
export PATH=/usr/local/share/npm/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin:$PATH

# Cabal binaries in the path
export PATH=$HOME/.cabal/bin:$PATH

# Cargo on the path
export PATH=$HOME/.cargo/bin:$PATH

# rbenv setup
[[ -f "${HOME}/.rbenv" ]] && export PATH="${HOME}/.rbenv/bin:${PATH}"

# Anaconda Setup
[[ -e "${HOME}/anaconda" ]] && export PATH=${HOME}/anaconda/bin:$PATH

# Homebrew
export HOMEBREW_GITHUB_API_TOKEN=1f40c47b53ab580cdc6d2284cc1eb045878325de

# Aliases
export EDITOR='mvim -v'
alias e='mvim -v'

alias gpg='gpg2'
alias b='gradle --daemon'
alias bb='gradle --daemon build'
alias bt='gradle --daemon test'

# MacOSX-specific stuff
if [[ "Darwin" == `uname` ]]; then
    [[ -f "/usr/libexec/java_home" ]] && export JAVA_HOME=`/usr/libexec/java_home`
fi

export NVM_DIR="/Users/robharrop/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
