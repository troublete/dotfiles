.PHONY: setup

load_deps:
	rm -rf themes
	git clone -q "https://github.com/chriskempson/tomorrow-theme.git" themes
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

setup: load_deps
	ln -fs $(PWD)/.zshrc ~/.zshrc
	ln -fs $(PWD)/.aliases ~/.aliases
	ln -fs $(PWD)/.functions ~/.functions	
	mkdir -p ~/.vim/colors
	cp $(PWD)/themes/vim/colors/* ~/.vim/colors/
	ln -fs $(PWD)/.vimrc ~/.vimrc