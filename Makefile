.DEFAULT_GOAL: all

all: link deps

link:
	find . -name ".*" ! -path "./.git" ! -path "./.gitignore" ! -path "." -maxdepth 1 -exec ln -sf ${PWD}/{} ~/{} \;

deps:
	brew bundle --global
