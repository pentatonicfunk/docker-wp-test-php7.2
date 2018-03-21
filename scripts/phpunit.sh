#!/bin/bash

PHPUNIT_PATH="$HOME/phpunit-6"

VERSION=`php -v | head -1`
echo "Running tests on $VERSION..."
"php" $PHPUNIT_PATH "${@:1}"

rc=$?
if [[ $rc != 0 ]] ; then
  # A non-zero return code means an error occurred, so tell the user and exit
  exit $rc
fi
