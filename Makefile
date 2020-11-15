install:
	mv ~/.vimrc .original_vimrc
	cp autoload/main.vim ~/.vimrc
	rm -rf ./bundle/Vundle.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ./bundle/Vundle.vim
	vim +PluginInstall +qall > /dev/null
	@echo "\e[32mtraject-vim is ready to use!\e[0m"
	@printf '\x1b[38;2;255;100;0mThis message is supposed to be red (no? see https://github.com/joshdick/onedark.vim)\x1b[0m\n'

uninstall:
	mv .original_vimrc ~/.vimrc
	echo "\e[91mtraject-vim is uninstalled"
