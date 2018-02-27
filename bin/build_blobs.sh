#!/bin/sh
#
# This assumes Bosh-S3CLI has been checked out from https://github.com/cloudfoundry/bosh-s3cli to go/src/github.com/cloudfoundry/bosh-s3cli
#

set -e

export GOPATH="$PWD"

[ -d blobs ] || mkdir -p blobs

go get github.com/cloudfoundry/bosh-s3cli

cp bin/bosh-s3cli blobs/s3cli

chmod +x "blobs/s3cli"
