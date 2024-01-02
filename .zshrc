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

# Aliases are set in ~/.config/zsh/custom/aliases.sh
# Any other aliases set might be overwritten because oh my zsh is annoying

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR='nvim'
export PATH=$PATH:$HOME/.local/bin:$HOME/.local/share/gem/ruby/3.0.0/bin
export DOCKER_BUILDKIT=1
export DOCKER_BUILDKIT=1
export XDEBUG_MODE=coverage
export CLOUDSDK_PYTHON_SITEPACKAGES=1
export K6_BROWSER_ENABLED=true
export BROWSER=google-chrome-stable
