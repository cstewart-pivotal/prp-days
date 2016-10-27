#!/usr/bin/env bash
set -e

# set the build path for Go
export GOPATH=$(pwd)

go get -v github.com/spf13/hugo

echo "downloaded hugo?"
echo hugo version

cd ../..
hugo -t pivotal -v -D
