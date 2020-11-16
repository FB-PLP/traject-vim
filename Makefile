install:
	./install.sh
	@echo "\e[32mtraject-vim is ready to use!\e[0m"
	@printf '\x1b[38;2;255;100;0mThis message is supposed to be red (no? see https://github.com/joshdick/onedark.vim)\x1b[0m\n'

uninstall:
	./uninstall.sh
