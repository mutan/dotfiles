## Setup

* Install Ubuntu, connect wi-fi, login Firefox, login Ubuntu single sign-on
* `sudo apt install git make`
* `git clone https://github.com/mutan/dotfiles.git ~/dotfiles`
* `cd dotfiles`
* `make setup`

## Parts

1. apt install
2. snap install
3. script install
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
