#!/bin/bash

declare -a FILES=("bash_profile" "gitconfig" "tmux.conf" "vimrc" "zshrc")

# CREATE SYM LINKS FOR FILES
echo Generating SYM Links For ...
for file in ${FILES[@]}
do
	echo $file
	ln -sfv $PWD/$file ~/.$file

done
