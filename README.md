dotfiles
========

my precious dotfiles

Run this to create symlinks (this overwrites existing files, so be careful):
```
ln -s -f ~/code/dotfiles/.gitconfig ~/
ln -s -f ~/code/dotfiles/.gitignore_global ~/
ln -s -f ~/code/dotfiles/.vimrc ~/
ln -s -f ~/code/dotfiles/.ssh/config ~/.ssh/
```

For oh-my-zsh:
```
ln -s -f ~/code/dotfiles/.aliases ~/
ln -s -f ~/code/dotfiles/.zshrc ~/
ln -s -f ~/code/dotfiles/.oh-my-zsh/themes/noam.zsh-theme ~/.oh-my-zsh/themes/
```

For fish:
```
ln -s -f ~/dotfiles/config.fish ~/.config/fish/
ln -s -f ~/dotfiles/functions/fish_prompt.fish  ~/.config/fish/functions/
ln -s -f ~/dotfiles/functions/fish_title.fish   ~/.config/fish/functions/
```
