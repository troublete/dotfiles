.DEFAULT_GOAL: all

all: link

link:
	cd .config && find .* -type f -maxdepth 0 -exec ln -sf ${PWD}/.config/{} ~/{} \;
