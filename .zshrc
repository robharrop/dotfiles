autoload -Uz compinit
compinit

asdf_path=$(brew --prefix asdf)/asdf.sh
if [[ -f "${asdf_path}"] ]; then
	. $asdf_path
fi

#OktaAWSCLI
if [[ -f "$HOME/.okta/bash_functions" ]]; then
	. "$HOME/.okta/bash_functions"
fi
if [[ -d "$HOME/.okta/bin" && ":$PATH:" != *":$HOME/.okta/bin:"* ]]; then
	PATH="$HOME/.okta/bin:$PATH"
fi

eval "$(starship init zsh)"

alias g="git"
alias ga="g add"
alias gc="g commit"
alias gco="g checkout"
alias gcm="gco master"
alias gst="g status"
alias gl="g pull"
alias gp="g push"

alias gpb='g push -u origin `git rev-parse --abbrev-ref HEAD`'

alias dc='docker compose'
alias dcu='docker compose up'
alias dcl='docker compose logs'

alias k='kubectl'
alias kl='k logs'
alias kgp='k get pods'

alias gr="gradle"
alias grb="gradle build"
alias grcb="gradle clean build"

alias tf="terraform"
alias tfp="terraform plan"
alias tfv="terraform validate"
alias tfa="terraform apply"

export EDITOR=vim
bindkey -e

export PATH=$PATH:$HOME/.local/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/robharrop/.sdkman"
[[ -s "/Users/robharrop/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/robharrop/.sdkman/bin/sdkman-init.sh"

