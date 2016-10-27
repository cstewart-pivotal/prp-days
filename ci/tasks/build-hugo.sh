#!/usr/bin/env bash
set -e

# set the build path for Go
echo "hello cami"

ruby <(curl -fsSk https://raw.github.com/mxcl/homebrew/go)
echo "downloaded homebrew?"

brew install hugo

# export GOPATH=$(pwd)
#
# go get -v github.com/spf13/hugo

echo "downloaded hugo?"
echo hugo version

cd ../..
hugo -t pivotal -v -D
