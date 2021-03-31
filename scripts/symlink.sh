#!/bin/bash

function linkDotfile {
  source="${HOME}/dotfiles/${1}"
  dest="${HOME}/${2}"
  dateStr=$(date +%Y-%m-%d-%H%M)

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
}

# 
linkDotfile git/.gitconfig .gitconfig
