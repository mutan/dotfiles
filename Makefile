.PHONY: setup install dotfiles

setup: install dotfiles

install:
	./scripts/apt-install.sh

dotfiles:
	./scripts/symlink.sh

programs:
	./scripts/programs/firefox.sh
	./scripts/programs/docker.sh

docker:
	./scripts/programs/docker.sh