#!/bin/zsh

echo "Install distel"

. ./.environment

tmp_dir=`mktemp -d`
cd "$tmp_dir"

git clone https://github.com/massemanet/distel.git ./distel

cd ./distel
export prefix="$HOME_EMACS_SITE_LISP"
echo "Distel install prefix=$prefix"

make -e install

cd -

rm -rf "$tmp_dir"

echo "(add-to-list 'load-path \"$HOME_EMACS_SITE_LISP/share/distel/elisp\")
(require 'distel)
(distel-setup)" > "$HOME_EMACS_SITE_LISP/home-distel.el"

echo "Distel installed"

