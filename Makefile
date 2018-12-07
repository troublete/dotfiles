.PHONY: setup

init: prerequisits

setup: 
	curl -L git.io/antigen > ~/antigen.zsh
	$(shell ./copy-config.sh)
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

prerequisits:
	/usr/bin/ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install \
		ansible \
		cmake \
		git \
		go \
		gource \
		imagemagick \
		nvm \
		python \
		python@2 \
		ruby \
		vim \
		webp
	brew upgrade

post:
	vim -c PlugInstall
	~/.vim/plugged/youcompleteme/install.py
