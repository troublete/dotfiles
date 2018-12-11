# copy system configuration files to home directory
for file in .aliases .gitignore .vimrc .zshrc .vim-plugins .vim-keymap
do
	ln -fs $PWD/conf/$file ~/$file
done
