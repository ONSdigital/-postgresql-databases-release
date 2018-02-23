#!/bin/sh

set -e

POSTGRESQL_VERSION='9.6.7'

[ -d blobs ] || mkdir -p blobs

cd blobs

curl -SLOC - "https://ftp.postgresql.org/pub/source/v$POSTGRESQL_VERSION/postgresql-$POSTGRESQL_VERSION.tar.gz"
