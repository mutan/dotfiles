## Setup

* Install Ubuntu
* Connect wi-fi
* Login Firefox
* Login Ubuntu single sign-on
* `sudo apt install git make`
* `git clone https://github.com/mutan/dotfiles.git ~/dotfiles`
* `cd dotfiles`
* `make apt-install`
* `make snap-install`
* `make docker`
* `make docker-compose`
* `make dropbox`
* `make libreoffice`
* `make php`
* `make post-install`
* `make dotfiles`

## Parts

1. apt install
2. snap install
3. other programms install
   * docker (check: `docker version` / `docker info`)
   * docker-compose (check: `docker-compose version`)
   * dropbox (check: `dropbox version`)
   * firefox
   * libreoffice-writer
   * libreoffice-calc
   * php 8 (check: `php -v`)
   * composer (check: `composer -V`)
   * яндекс диск (check: `yandex-disk -v`)
4. symlink dotfiles

## Secret install.sh

### Useful commands
`i3-msg reload`  
`i3-msg restart` 
