.PHONY: install dotfiles git bash i3 i3status fonts

dotfiles:= dotfiles

happy: install dotfiles

install:
	./scripts/apt-install.sh

dotfiles:
	./scripts/symlink.sh

git:
	ln -svf ${HOME}/$(dotfiles)/git/.gitconfig ${HOME}/.gitconfig

bash:
	ln -svf ${HOME}/$(dotfiles)/bash/.bash_aliases.sh ${HOME}/.bash_aliases
	ln -svf ${HOME}/$(dotfiles)/bash/.bash_functions.sh ${HOME}/.bash_functions

i3:
	mkdir -p ${HOME}/.config/i3
	ln -svf ${HOME}/$(dotfiles)/i3/config ${HOME}/.config/i3/config

i3status:
	mkdir -p ${HOME}/.config/i3status
	ln -svf ${HOME}/$(dotfiles)/i3status/config ${HOME}/.config/i3status/config

fonts:
	mkdir -p ${HOME}/.fonts
	ln -svf ${HOME}/$(dotfiles)/fonts/fa-brands-400.ttf ${HOME}/.fonts
	ln -svf ${HOME}/$(dotfiles)/fonts/fa-regular-400.ttf ${HOME}/.fonts
	ln -svf ${HOME}/$(dotfiles)/fonts/fa-solid-900.ttf ${HOME}/.fonts
	ln -svf ${HOME}/$(dotfiles)/fonts/feather.ttf ${HOME}/.fonts
	fc-cache -fv