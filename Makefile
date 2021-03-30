.PHONY: install dotfiles git bash i3 i3status fonts

dotfiles:= dotfile

install:
	sudo apt-get update -y
	sudo apt-get install gnome-tweaks -y
	sudo apt-get install dconf-editor -y
	sudo apt-get install ubuntu-restricted-extras -y
	sudo apt-get install curl wget mc htop git make -y
	sudo apt-get install i3 i3status dunst rofi -y

dotfiles: git bash i3 i3status fonts

git:
	ln -svf ${HOME}/$(dotfiles)/git/.gitconfig ${HOME}/.gitconfig

bash:
	ln -svf ${HOME}/$(dotfiles)/bash/.bash_aliases ${HOME}/.bash_aliases
	ln -svf ${HOME}/$(dotfiles)/bash/.bash_functions ${HOME}/.bash_functions

i3:
	ln -svf ${HOME}/$(dotfiles)/i3/config ${HOME}/.config/i3/config

i3status:
	ln -svf ${HOME}/$(dotfiles)/i3status/config ${HOME}/.config/i3status/config

fonts:
	ln -svf ${HOME}/$(dotfiles)/fonts ${HOME}/.fonts
	fc-cache -fv