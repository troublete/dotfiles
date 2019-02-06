.DEFAULT_GOAL: all

all: link

link:
	find . -name ".*" ! -path "./.git" ! -path "./.gitignore" ! -path "." -maxdepth 1 -exec ln -sf ${PWD}/{} ~/{} \;
