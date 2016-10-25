#!/usr/bin/env bash
set -e


git clone https://github.com/spf13/hugo
mkdir -p src/github.com/spf13
ln -sf $(pwd) src/github.com/spf13/hugo

# set the build path for Go
export GOPATH=$(pwd)

go get

go build -o hugo main.go

cd ../..
hugo -t pivotal -v -D
