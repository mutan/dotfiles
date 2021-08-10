.PHONY: setup install
.PHONY: apt-install snap-install script-install post-install
.PHONY: dotfiles

apt-install:
	./scripts/apt-install.sh

snap-install:
	./scripts/snap-install.sh

docker:
	./scripts/programs/docker.sh

docker-compose:
	./scripts/programs/docker-compose.sh

dropbox:
	./scripts/programs/dropbox.sh

firefox:
	./scripts/programs/firefox.sh

libreoffice:	
	./scripts/programs/libreoffice.sh

php:
	./scripts/programs/php.sh

yandex-disc:
	./scripts/programs/yandex-disc.sh

post-install:
	./scripts/post-install.sh

dotfiles:
	./scripts/symlink-dotfiles.sh