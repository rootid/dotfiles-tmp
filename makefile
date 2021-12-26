.PHONY: install install_omz update_brew add_fonts add_config update_ssh_config update_tools unlink_config update_vim unlink_vim unlink_tools

install:
	@echo "Installing Homebrew on mac"
	homebrew/install.sh

install_omz:
	@echo "Installing ZSH on mac"
	omz/install.sh

install_python_bins:
	@echo "Installing python bins"
	pip3 install -r tools/python/requirements.txt

update_brew:
	@echo "Adding apps using brewfile"
	brew bundle

add_fonts:
	@echo "Adding font"
	fonts/install.sh

add_config:
	@echo "Adding/updating config"
	@stow -t ~ config -vvv

update_ssh_config:
	@echo "Adding/updating ssh config"
	@stow -t ~ ssh -vvv

update_tools:
	@echo "Updating tools shortcuts"
	@stow -t ~ tools --no-folding -vvv

unlink_tools:
	@echo "unlinking tools shortcuts"
	@stow -D tools -vvv

unlink_config:
	@echo "unlinking config shortcuts"
	@stow -D config -vvv

update_vim:
	# To update color clone repo and add color to vim/.vim/color dir and run this command
	@echo "Updating vim config"
	@stow -t ~ vim --no-folding -vvv
	mkdir -p $(HOME)/.vim-plug/plugged

unlink_vim:
	@stow -D vim

# stow test the changes first eg. stow -n -t ~ ssh -vvv
# vim: noexpandtab
