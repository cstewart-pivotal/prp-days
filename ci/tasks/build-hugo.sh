#!/usr/bin/env bash

brew update && brew install hugo

cd ~/playground/prp-days-test
hugo -t pivotal -v -D
