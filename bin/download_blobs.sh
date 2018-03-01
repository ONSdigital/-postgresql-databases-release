#!/bin/sh

set -e

POSTGRESQL_VERSION='9.6.7'

BLOB_DIR="${1:-blobs}"

[ -d "$BLOB_DIR" ] || mkdir -p "$BLOB_DIR"

cd "$BLOB_DIR"

curl -SLOC - "https://ftp.postgresql.org/pub/source/v$POSTGRESQL_VERSION/postgresql-$POSTGRESQL_VERSION.tar.gz"
