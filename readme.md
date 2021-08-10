## Setup

* Install Ubuntu
* Connect wi-fi
* Login Firefox
* Login GitHub
* Login Ubuntu single sign-on
* `sudo apt update && sudo apt install git make`
* `git clone git@github.com:mutan/dotfiles.git ~/dotfiles`
* `cd dotfiles`
* `make apt-install`
* `make snap-install`
* `make docker`
* `make docker-compose`
* `make dropbox`
* `make libreoffice`
* `make php`
* `make post-install`
* Symlink dotfiles: `make dotfiles`
* Dotfiles secret install

## Check installed
* docker: `docker version` / `docker info`
* docker-compose: `docker-compose version`
* dropbox (check: `dropbox version`
* php 8: `php -v`
* composer: `composer -V`
* Яндекс диск: `yandex-disk -v`

## Useful commands / shortcuts
`i3-msg reload` or `Mod + Shift + c` - reload the configuration file  
`i3-msg restart` or `Mod + Shift + r` - restart i3 inplace

i3 Reference Card
https://i3wm.org/docs/refcard.html