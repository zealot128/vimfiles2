XDG_CONFIG_HOME ?= $(HOME)/.config
.PHONY : symlink install neovim

symlink:
	-ln -s ~/.vim/vimrc ~/.vimrc
	-ln -s ~/.vim/gvimrc ~/.gvimrc

neovim:
	-ln -sf ~/.vim ~/.nvim
	-ln -sf ~/.vimrc ~/.nvimrc
	-mkdir -p ${XDG_CONFIG_HOME}
	-ln -sf ~/.vim ${XDG_CONFIG_HOME}/nvim
	-ln -sf ~/.vimrc ${XDG_CONFIG_HOME}/nvim/init.vim

update:
	git pull origin master
	nvim -c ':PlugUpdate'

install : symlink neovim

