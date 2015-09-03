#!/bin/bash

set -e
set -x

USER=$(whoami)
DIR=$(readlink -f $(dirname "$0"))
TRAVIS_PHP_VERSION=$(phpenv version-name)
#DOCUMENT_ROOT=$(realpath "$DIR/../tests")
PORT=9000
SERVER="127.0.0.1:$PORT"

mkdir "$DIR/nginx"