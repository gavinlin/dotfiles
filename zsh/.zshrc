# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  ZSH_THEME="powerlevel10k/powerlevel10k"
elif [[ -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]]; then
  ZSH_THEME="powerlevel10k/powerlevel10k"
else
  ZSH_THEME="robbyrussell"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
	git
	zsh-autosuggestions
	zsh-vi-mode
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if command -v "nvim" &> /dev/null; then
  alias vim="nvim"
  alias vi="nvim"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# export PATH="/opt/homebrew/anaconda3/bin:$PATH"  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix

if [[ `uname` == "Darwin" ]]; then
  export PATH="/Applications/Alacritty.app/Contents/MacOS:$PATH"
fi


if command -v "lsd" &> /dev/null; then
  alias ls="lsd"
  alias ll="lsd -alh"
  alias tree="lsd --tree"
fi

if command -v batcat >/dev/null 2>&1; then
  alias cat=$(which batcat)
elif command -v bat >/dev/null 2>&1; then
  alias cat=$(which bat)
fi

eval "$(zoxide init zsh --cmd cd)"

VI_MODE_SET_CURSOR=true

include () {
  [[ -f "$1" ]] && source "$1"
}

include .zsh_custom/config.zsh

