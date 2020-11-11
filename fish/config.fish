function fish_user_key_bindings
  bind \cr peco_select_history # Bind for peco history to Ctrl+r
end

set -g GHQ_SELECTOR peco

#anyenv
if test -d $HOME/.anyenv
  set PATH $HOME/bin $HOME/.anyenv/bin $PATH
  anyenv init - fish | source
end

# thefuck
thefuck --alias | source 

set PATH /usr/local/bin /usr/sbin $HOME/development/flutter/bin $PATH

if test -d $HOME/.anyenv
  pyenv init - | source
end 

# balias
balias g git
balias killdss 'find . -name ".DS_Store" | xargs rm'
balias fishrc 'vim ~/.config/fish/config.fish'
balias dotfiles 'cd ~/dotfiles'
balias update_env 'sh $HOME/src/github.com/7ew1r/shellscripts/update_env.sh'

