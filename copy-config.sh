# copy system configuration files to home directory
for file in ".aliases" ".gitconfig" ".gitignore" ".vimrc" ".zshrc"
do
	ln -s "$PWD/conf/$file" "~/$file"
done
