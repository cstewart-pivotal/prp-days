#!/usr/bin/env bash
set -e


echo "hello cami"
export ALL_PROXY=24.8.194.104:443

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "downloaded homebrew!"

brew install hugo

# export GOPATH=$(pwd)
#
# go get -v github.com/spf13/hugo

echo "downloaded hugo?"
echo hugo version

cd ../..
hugo -t pivotal -v -D
