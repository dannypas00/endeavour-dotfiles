if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH=$HOME/.config/zsh
ZSH_CUSTOME=$ZSH/custom

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    copyfile
    dirhistory
    docker-compose
    docker
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/keybinds.sh

# Aliases are set in ~/.config/zsh/custom/aliases.sh
# Any other aliases set might be overwritten because oh my zsh is annoying
source $ZSH_CUSTOM/aliases.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR='nvim'
export PATH=$PATH:$HOME/.local/bin:$HOME/.local/share/gem/ruby/3.0.0/bin
export DOCKER_BUILDKIT=1
export DOCKER_BUILDKIT=1
export XDEBUG_MODE=coverage
export CLOUDSDK_PYTHON_SITEPACKAGES=1
export K6_BROWSER_ENABLED=true
export BROWSER=google-chrome-stable

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/dannypas00/google-cloud-sdk/path.zsh.inc' ]; then . '/home/dannypas00/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/dannypas00/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/dannypas00/google-cloud-sdk/completion.zsh.inc'; fi
source /usr/share/nvm/init-nvm.sh
