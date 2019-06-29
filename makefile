.PHONY: install update add-fonts add-configs tools update-vim unlink-vim

install:
	@echo "Installing Homebrew on mac"
	homebrew/install.sh

update:
	@echo "Adding required applications"
	brew bundle

add-fonts:
	@echo "Adding font"
	fonts/install.sh

add-configs:
	@echo "Adding/updating config"
	@stow -t ~ config -vvv

tools:
	@echo "Updating tools shortcuts"
	@stow -t ~ tools --no-folding -vvv

delete-tools:
	@echo "deleting tools shortcuts"
	@stow -D tools -vvv

update-vim:
	@echo "Updating vim config"
	@stow -t ~ vim --no-folding -vvv
	mkdir -p $(HOME)/.vim-plug/plugged

unlink-vim:
	@stow -D vim

# vim: noexpandtab
