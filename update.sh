#!/bin/sh
set -e
mkdir -p ./dev
GOPATH=`pwd`/dev go get github.com/docker/swarm
cp ./dev/bin/swarm ./swarm
