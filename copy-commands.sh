# copy short hand commands for the use within the terminal
for file in init-prj
do
	ln -fs $PWD/cmd/$file ~/bin/$file
done
