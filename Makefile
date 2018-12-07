.PHONY: setup pre post

setup: pre
	$(shell ./copy-config.sh)
	$(shell ./copy-commands.sh)
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pre:
	/usr/bin/ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew update
	brew upgrade
	brew install -i \
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
	brew cask install google-cloud-sdk
	brew install antigen

post:
	vim -c PlugInstall
	~/.vim/plugged/youcompleteme/install.py
