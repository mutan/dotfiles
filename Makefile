.PHONY: setup install apt-install snap-install script-install dotfiles

setup: install dotfiles

install: apt-install snap-install script-install

apt-install:
	./scripts/apt-install.sh

snap-install:
	./scripts/snap-install.sh

script-install:
	./scripts/programs/docker.sh
	./scripts/programs/firefox.sh
	./scripts/programs/php.sh

dotfiles:
	./scripts/symlink-dotfiles.sh


docker:
	./scripts/programs/docker.sh