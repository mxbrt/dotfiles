# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Path to your oh-my-zsh installation.
ZSH="$HOME/.local/share/oh-my-zsh"
[ -d "$ZSH/custom/themes/powerlevel10k" ] && ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  fzf
)

[ -d "$ZSH" ] && source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='nvim'
export XDG_CURRENT_DESKTOP=sway

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
export LIBVA_DRIVER_NAME=radeon

alias vim=nvim
alias cat=bat
alias ls=exa -lah
alias zathura="zathura --fork"
alias dotfiles='git --git-dir=$HOME/.gitdotfiles/ --work-tree=$HOME'
alias lg=lazygit

setopt extendedglob

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
