#!/bin/sh
#
# This assumes Bosh-S3CLI has been checked out from https://github.com/cloudfoundry/bosh-s3cli to go/src/github.com/cloudfoundry/bosh-s3cli
#

set -e

export GOPATH="$PWD"

BLOB_DIR="${1:-blobs}"

[ -d "$BLOB_DIR" ] || mkdir -p "$BLOB_DIR"

go get github.com/cloudfoundry/bosh-s3cli

cp bin/bosh-s3cli "$BLOB_DIR/s3cli"

chmod +x "$BLOB_DIR/s3cli"
