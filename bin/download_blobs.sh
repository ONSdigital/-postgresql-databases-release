#!/bin/sh

set -e

POSTGRESQL_VERSION='9.6.6'

curl -SOC - "https://ftp.postgresql.org/pub/source/v$POSTGRESQL_VERSION/postgresql-$POSTGRESQL_VERSION.tar.gz"
