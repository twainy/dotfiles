#!/bin/bash

if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  if [ "$(uname -s)" == "Darwin" ]
  then
    brew install rbenv > /tmp/rbenv-install.log
  else
    sudo apt-get install -y rbenv
  fi
fi

if test ! $(which ruby-build)
then
  echo "  Installing ruby-build for you."
  if [ "$(uname -s)" == "Darwin" ]
  then
    brew install ruby-build > /tmp/ruby-build-install.log
  else
    sudo apt-get install -y ruby-build
  fi
fi

echo "  install bundler for you."
gem install bundler

echo "  install gems for you."
pushd $(dirname $0)
sudo bundle install
popd
