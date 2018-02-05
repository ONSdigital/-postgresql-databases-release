#!/bin/sh
#
# This assumes Bosh-S3CLI has been checked out from https://github.com/cloudfoundry/bosh-s3cli to go/src/github.com/cloudfoundry/bosh-s3cli
#

set -e

export GOPATH="$PWD/build/go"

mkdir -p "$GOPATH" blobs

cd build/go/src/github.com/cloudfoundry/bosh-s3cli

go build

cd -

cp build/go/src/github.com/cloudfoundry/bosh-s3cli/bosh-s3cli blobs/
