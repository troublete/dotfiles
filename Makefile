.DEFAULT_GOAL: all

all: link deps

link:
	find . -name ".*" ! -path "./.git" ! -path "." -maxdepth 1 -exec ln -sf ${PWD}/{} ~/{} \;

deps:
	brew bundle --global
