# oh-my-zsh(1) chunk
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME=""
plugins=(
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  bgnotify
  zsh-fzf-history-search
)

# end of oh-my-zsh(1) chunk

# env chunk
PATH="$PREFIX/local/bin:$HOME/.yarn/bin:$PREFIX/bin:$HOME/.local/bin:$PATH"
export PATH

LINK="https://github.com/LKmXr"
export LINK

LINK_SSH="git@github.com:LKmXr"
export LINK_SSH

export TERM=xterm-256color

# end of env chunk

# oh-my-zsh(2) chunk
source $ZSH/oh-my-zsh.sh

# end of oh-my-zsh(2) chunk

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

zinit light zdharma-continuum/fast-syntax-highlighting

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \

### End of Zinit's installer chunk

# zoxide(z) chunk
eval "$(zoxide init zsh)"
alias cd="z"

# end of zoxide(z) chunk

# powerlevel10k chunk
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# end of powerlevel10k chunk

# starship chunk
eval "$(starship init zsh)"

# end of starship chunk

# dotfiles chunk
source $HOME/.config/lf/icons
source $HOME/.aliases
source $HOME/.android_apps
source $HOME/.autostart

# end of dotfiles chunk

