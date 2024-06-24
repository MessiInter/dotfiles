export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="osx2"
plugins=(
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  bgnotify
  zsh-fzf-history-search
)

PATH="$PREFIX/bin:$HOME/.local/bin:$PATH"
export PATH

LINK="https://github.com/LKmXr"
export LINK

LINK_SSH="git@github.com:LKmXr"
export LINK_SSH

export TERM=xterm-256color 

source $ZSH/oh-my-zsh.sh
source $HOME/.config/lf/icons
[[ ! -f ~/antigen.zsh ]] || source ~/antigen.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
antigen theme romkatv/powerlevel10k
antigen apply
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $HOME/.aliases
source $HOME/.android_apps
source $HOME/.autostart
