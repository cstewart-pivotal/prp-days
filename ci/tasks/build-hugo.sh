#!/usr/bin/env bash
set -e


echo "hello cami"

useradd -m linuxbrew
sudo -u linuxbrew -i /bin/bash
PATH=~/.linuxbrew/bin:/usr/sbin:/usr/bin:/sbin:/bin
yes | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"


brew install hugo

# export GOPATH=$(pwd)
#
# go get -v github.com/spf13/hugo

echo "downloaded hugo?"
echo hugo version

cd ../..
hugo -t pivotal -v -D
