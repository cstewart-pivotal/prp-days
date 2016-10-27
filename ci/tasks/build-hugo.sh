#!/usr/bin/env bash
set -e


echo "hello cami"


ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"

brew update
brew install hugo

# export GOPATH=$(pwd)
#
# go get -v github.com/spf13/hugo

echo "downloaded hugo?"
echo hugo version

cd ../..
hugo -t pivotal -v -D
