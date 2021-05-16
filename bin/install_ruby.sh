#!/bin/sh

# Must install ruby-install and chruby
# chruby - Manage ruby version
# Gems - package / jar
# Gemfile - pom.xml
# Bundler - Special bundler that helps to install Gems from GemFile


ruby-install ruby-2.7.2

echo "source /usr/local/share/chruby/chruby.sh" >> ~/.zshrc
echo "source /usr/local/share/chruby/auto.sh" >> ~/.zshrc
echo "chruby ruby-2.7.2" >> ~/.zshrc

# Disable downloading documentation when install gems
echo "gem: --no-document" >> ~/.gemrc

gem update --system

gem install bundler

# Utilize max number of cores
number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))
