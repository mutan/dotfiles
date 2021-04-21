.PHONY: setup install
.PHONY: apt-install snap-install script-install post-install
.PHONY: dotfiles

setup: install dotfiles

install: apt-install snap-install script-install post-install

apt-install:
	./scripts/apt-install.sh

snap-install:
	./scripts/snap-install.sh

script-install:
	./scripts/programs/docker.sh
	./scripts/programs/dropbox.sh
	./scripts/programs/firefox.sh
	./scripts/programs/libreoffice.sh
	./scripts/programs/php.sh
	./scripts/programs/yandex-disc.sh

post-install:
	./scripts/programs/post-install.sh

dotfiles:
	./scripts/symlink-dotfiles.sh


docker:
	./scripts/programs/docker.sh