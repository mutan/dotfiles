git clone https://github.com/mutan/dotfiles.git ~/dotfiles


### git
ln -svf ${HOME}/.dotfiles/git/.gitconfig ${HOME}/.gitconfig

### bash
ln -svf ${HOME}/dotfiles/bash/.bash_aliases ${HOME}/.bash_aliases
ln -svf ${HOME}/dotfiles/bash/.bash_functions ${HOME}/.bash_functions

### i3
ln -svf ${HOME}/dotfiles/i3/config ${HOME}/.config/i3/config
Mod + Shift + c