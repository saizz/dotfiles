# omf/bobthefish
set -g theme_date_format "+%H:%M:%S"

# ghq
set GHQ_SELECTOR fzf

# fzf
set FZF_LEGACY_KEYBINDINGS 0

# google cloud sdk
source $HOME/opt/google-cloud-sdk/path.fish.inc

# gopath
set -x GOPATH $HOME/.gopath
set -x PATH $GOPATH/bin $PATH

# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
bass 'eval "$(anyenv init -)"'

# direnv
eval (direnv hook fish)

source $HOME/.ghq/github.com/saizz/dotfiles/.config/fish/functions.fish
source $HOME/.ghq/github.com/saizz/dotfiles/.config/fish/aliases.fish
source $HOME/.ghq/github.com/saizz/dotfiles/.config/fish/my_fish_prompt.fish
