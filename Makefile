.PHONY : bundle ubuntu vim_source symlink vundle install

bundle:
	vim +BundleInstall +qall

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

vundle:
	mkdir -p ~/.vim/bundle
	-git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

neovim:
	-ln -s ~/.vim ~/.nvim
	-ln -s ~/.vimrc ~/.nvimrc


install : symlink vundle bundle neovim

