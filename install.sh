#!/bin/bash

sudo apt update && sudo apt install -y protobuf-compiler

sudo cp src/protoc-gen-openapiv2-v2.16.0-linux-x86_64 /usr/local/bin/protoc-gen-openapiv2
sudo chmod +x /usr/local/bin/protoc-gen-openapiv2

sudo rm -rf src/shared
git clone -b proto/threat_intelligence --single-branch ssh://bitbucket.hq.eset.com:7999/shared/shared.git src/shared