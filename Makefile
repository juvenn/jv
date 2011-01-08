setup:
	mv ~/.vimrc ~/vimrc
	ln -s ~/.vim/vimrc ~/.vimrc
	mv ~/.gitconfig ~/gitconfig
	ln -s ~/.vim/gitconfig ~/.gitconfig

.PHONY: setup
