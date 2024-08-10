#!/bin/bash

node --version
[ $? -eq 0 ]  || echo -e "\nRun 'nix develop' before running this script, exiting..." && exit 1

VERSION="1.0.0"
THEME_DIR="at-code-dark"
PACKAGE_NAME=""$THEME_DIR"-"$VERSION".vsix"
BASE_DIR="$(dirname "$(readlink -f "$0")")"

if ! [ -d $BASE_DIR/node_modules/.bin ]; then
	echo "Dependencies not found, exiting..." && exit 1
fi

cd $BASE_DIR/$THEME_DIR
../node_modules/.bin/vsce package
mv $BASE_DIR/$THEME_DIR/$PACKAGE_NAME $BASE_DIR/latest/$PACKAGE_NAME
