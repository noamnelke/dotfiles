dotfiles
========

my precious dotfiles

Run this to create symlinks (this overwrites existing files, so be careful):
```
ln -s -f ~/dotfiles/.aliases ~/
ln -s -f ~/dotfiles/.gitconfig ~/
ln -s -f ~/dotfiles/.vimrc ~/
ln -s -f ~/dotfiles/.zshrc ~/
ln -s -f ~/dotfiles/.ssh/config_mine ~/.ssh/
ln -s -f ~/dotfiles/.oh-my-zsh/themes/noam.zsh-theme ~/.oh-my-zsh/themes/

git config --global core.excludesfile ~/.gitignore_global
ln -s -f ~/dotfiles/.gitignore_global ~/
```
