.DEFAULT_GOAL: all

all: setup-git setup-zsh setup-vim setup-brew

setup-zsh:
	cd .config && find .z* -exec ln -sf ${PWD}/.config/{} ~/{} \;

setup-git:
	cd .config && find .git* -maxdepth 0 -exec ln -sf ${PWD}/.config/{} ~/{} \;

setup-ctags:
	cd .config && find .ctags -exec ln -sf ${PWD}/.config/{} ~/{} \;

setup-vim:
	cd .config && find .vim* -exec ln -sf ${PWD}/.config/{} ~/{} \;

setup-brew:
	cd .config && find Brewfile -exec ln -sf ${PWD}/.config/{} ~/{} \;
