#!/bin/sh
#
# This assumes Bosh-S3CLI has been checked out from https://github.com/cloudfoundry/bosh-s3cli to go/src/github.com/cloudfoundry/bosh-s3cli
#

export GOPATH="$PWD/build/go"

mkdir -p "$GOPATH"
mkdir -p "$PWD/blobs"

cd build/go/src/github/cloudfoundry/bosh-s3cli

go build

cd -

cp go/src/github.com/cloudfoundry/bosh-s3cli/bosh-s3cli blobs/
