#!/bin/sh

if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  brew install rbenv > /tmp/rbenv-install.log
fi

if test ! $(which ruby-build)
then
  echo "  Installing ruby-build for you."
  brew install ruby-build > /tmp/ruby-build-install.log
fi

echo "  install bundler for you."
gem install bundler

echo "  install gems for you."
pushd $(dirname $0)
sudo bundle install
popd
