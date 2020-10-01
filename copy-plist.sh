#!/bin/bash

set -e

current_directory="$(dirname "$0")"
cd $current_directory/..

cp $PROJECT_DIR/Source/Info.plist $PROJECT_DIR/Source/Secret.plist
sed "s/_BUILD_NUMBER_/`git rev-list HEAD --count`/" $PROJECT_DIR/Source/Info.plist > $PROJECT_DIR/Source/Secret.plist
