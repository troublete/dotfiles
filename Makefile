.PHONY: setup

setup: 
	curl -L git.io/antigen > ~/antigen.zsh
	$(shell ./copy-config.sh)
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

