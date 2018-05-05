set -g theme_date_format "+%H:%M:%S"

# google cloud sdk
source $HOME/google/google-cloud-sdk/path.fish.inc

# gopath
set -x GOPATH $HOME/.gopath
set -x PATH $GOPATH/bin $PATH

# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
bass 'eval "$(anyenv init -)"'

# direnv
eval (direnv hook fish)

source $HOME/.ghq/github.com/saizz/dotfiles/.conf/fish/functions.fish
source $HOME/.ghq/github.com/saizz/dotfiles/.conf/fish/aliases.fish
source $HOME/.ghq/github.com/saizz/dotfiles/.conf/fish/keybindings.fish

