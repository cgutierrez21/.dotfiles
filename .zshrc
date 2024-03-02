source ~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# For tkinter 
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
alias clion="open /Applications/CLion.app"

alias systeminfo="system_profiler SPSoftwareDataType SPHardwareDataType"
alias ghc="gh repo create"
alias tkill="tmux kill-session -t"
alias tattach="tmux a -t"
alias eza="eza --all"
alias ezal="eza --all --long"
alias cls="colorls -a"
alias x="exit"
alias c="clear"
alias tms="tmux_sessionizer.sh"
alias nvim='nvim --startuptime /tmp/nvim-startuptime'
alias cc="cd && c"

eval $(thefuck --alias)
export PATH=$(brew --prefix sqlite)/bin:$PATH

alias nfocus="NVIM_APPNAME=nfocus nvim"

function nvims() {
  items=("default" "nfocus" )
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

bindkey -s ^a "nvims\n"
bindkey -s ^t "tms\n"
bindkey -r "^L"

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/.p10k.zsh.
# [[ ! -f ~/.dotfiles/.p10k.zsh ]] || source ~/.dotfiles/.p10k.zsh
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# opam configuration
[[ ! -r /Users/cristiangutierrez/.opam/opam-init/init.zsh ]] || source /Users/cristiangutierrez/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

eval "$(starship init zsh)"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init --cmd cd zsh)"
export PATH="/opt/homebrew/opt/flex/bin:$PATH"

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/cristiangutierrez/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
