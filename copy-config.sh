# copy system configuration files to home directory
for file in .aliases .gitconfig .gitignore .vimrc .zshrc
do
	ln -fs $PWD/conf/$file ~/$file
done
