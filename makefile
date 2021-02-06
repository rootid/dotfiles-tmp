.PHONY: install update add-fonts add-configs tools update-vim unlink-vim

install:
	@echo "Installing Homebrew on mac"
	homebrew/install.sh

install-omz:
	@echo "Installing ZSH on mac"
	omz/install.sh

update:
	@echo "Adding apps using brewfile"
	brew bundle

add-fonts:
	@echo "Adding font"
	fonts/install.sh

add-config:
	@echo "Adding/updating config"
	@stow -t ~ config -vvv

update-ssh-config:
	@echo "Adding/updating ssh config"
	@stow -t ~ ssh -vvv

tools:
	@echo "Updating tools shortcuts"
	@stow -t ~ tools --no-folding -vvv

delete-tools:
	@echo "deleting tools shortcuts"
	@stow -D tools -vvv

delete-config:
	@echo "deleting config shortcuts"
	@stow -D config -vvv

update-vim:
	# To update color clone repo and add color to vim/.vim/color dir and run this command
	@echo "Updating vim config"
	@stow -t ~ vim --no-folding -vvv
	mkdir -p $(HOME)/.vim-plug/plugged

unlink-vim:
	@stow -D vim

unlink-tools:
	@stow -D tools

# stow test the changes first eg. stow -n -t ~ ssh -vvv
# vim: noexpandtab
