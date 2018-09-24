# install fisherman at once
if not test -f ~/.config/fish/functions/fisher.fish
  curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
  fisher
end

# ghq
set GHQ_SELECTOR fzf

# fzf
set FZF_LEGACY_KEYBINDINGS 0

# direnv
eval (direnv hook fish)

source $HOME/.ghq/github.com/saizz/dotfiles/.config/fish/functions.fish
source $HOME/.ghq/github.com/saizz/dotfiles/.config/fish/aliases.fish
source $HOME/.ghq/github.com/saizz/dotfiles/.config/fish/my_fish_prompt.fish

set -x PIPENV_VENV_IN_PROJECT true
