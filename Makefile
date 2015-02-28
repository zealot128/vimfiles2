.PHONY : ubuntu vim_source symlink install

ubuntu:
	sudo apt-get install libncurses-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev ruby-dev python-dev git-core

vim_source:
	mkdir ~/.src -p
	cd ~/.src
	wget ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2
	tar jxf vim-7.3.tar.bz2
	cd vim73/
	./configure --with-features=huge --enable-gui=gnome2 --enable-rubyinterp --enable-pythoninterp
	make
	sudo make install

symlink:
	-ln -s ~/.vim/vimrc ~/.vimrc
	-ln -s ~/.vim/gvimrc ~/.gvimrc

neovim:
	-ln -s ~/.vim ~/.nvim
	-ln -s ~/.vimrc ~/.nvimrc

update:
	git pull origin master
	nvim -c ':PlugUpdate'

install : symlink neovim

