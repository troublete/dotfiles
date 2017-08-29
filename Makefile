.PHONY: setup

load_deps:
	rm -rf themes
	git clone -q "https://github.com/chriskempson/tomorrow-theme.git" themes

setup: load_deps
	ln -fs $(PWD)/.zshrc ~/.zshrc
	ln -fs $(PWD)/.aliases ~/.aliases
	ln -fs $(PWD)/.zsh_functions ~/.zsh_functions	
	mkdir -p ~/.vim/colors
	cp $(PWD)/themes/vim/colors/* ~/.vim/colors/
	ln -fs $(PWD)/.vimrc ~/.vimrc