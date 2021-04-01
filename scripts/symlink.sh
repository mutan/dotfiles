#!/bin/bash

dotfiles=$(pwd)

function linkDotfile {
    source="${dotfiles}/${1}"
    dest="${HOME}/${2}"
    dateStr=$(date +%Y-%m-%d-%H%M)
    echo $source $dest $dateStr

    # Existing symlink 
    if [ -h "${dest}" ]; then
        echo "Removing existing symlink: ${dest}"
        rm ${dest} 

    # Existing file
    elif [ -f "${dest}" ]; then
        echo "Backing up existing file: ${dest}"
        mv ${dest}{,.${dateStr}}

    # Existing dir
    elif [ -d "${dest}" ]; then
        echo "Backing up existing dir: ${dest}"
        mv ${dest}{,.${dateStr}}
    fi

    echo "Creating new symlink:"
    ln -sv ${source} ${dest}
    echo ""
}

# First argument - path starting from dotfiles repo dir
# Second argument - path starting from ${HOME}

linkDotfile git/.gitconfig .gitconfig
linkDotfile bash/.bash_aliases.sh .bash_aliases
linkDotfile bash/.bash_functions.sh .bash_functions
# linkDotfile bash/.bashrc.sh

mkdir -p ${HOME}/.config/i3
linkDotfile i3/config .config/i3/config

mkdir -p ${HOME}/.config/i3status
linkDotfile i3status/config .config/i3status/config

mkdir -p ${HOME}/.fonts
linkDotfile fonts/fa-brands-400.ttf .fonts/fa-brands-400.ttf
linkDotfile fonts/fa-regular-400.ttf .fonts/fa-regular-400.ttf
linkDotfile fonts/fa-solid-900.ttf .fonts/fa-solid-900.ttf
linkDotfile fonts/feather.ttf .fonts/feather.ttf
fc-cache -f