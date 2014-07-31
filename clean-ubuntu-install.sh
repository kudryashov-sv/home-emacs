#!/bin/sh

pre_install_msg="$HOME/.emacs exists, backup and cleanup $HOME/.emacs, $HOME/.emacs.d"

sudo apt-get update || exit 1
sudo apt-get install curl git aspell emacs24 -y || exit 1

if [ -f "$HOME/.emacs" ]; then
    echo "$pre_install_msg"
    exit 1
fi

if [ -d "$HOME/.emacs.d" ]; then
    echo "$pre_install_msg"
fi

echo "Download and install prelude"
curl -L "https://github.com/bbatsov/prelude/raw/master/utils/installer.sh" | sh || exit 1

echo "Download .emacs file"
curl -L "https://github.com/kudryashov-sv/home-emacs/raw/master/.emacs" > "$HOME/.emacs" || exit 1

echo "Download prelude-modules.el"
curl -L "http://github.com/kudryashov-sv/home-emacs/raw/master/prelude-modules" > "$HOME/.emacs.d/"

emacs24 --daemon
