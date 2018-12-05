.PHONY: setup

setup: 
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -fs $(PWD)/.zshrc ~/.zshrc
	ln -fs $(PWD)/.aliases ~/.aliases
	ln -fs $(PWD)/.functions ~/.functions	
