# Copyright (c) 2017 AndreaSonny <andreasonny83@gmail.com> (https://github.com/andreasonny83)
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

#!/bin/bash

# The script should immediately exit if any command in the script fails.
set -e

# Go to the project root directory
cd $(dirname ${0})/..

PACKAGE_VERSION=$(cat ./dist/package.json \
  | grep version \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[",]//g' \
  | tr -d '[[:space:]]')

# Update the package.json version
sed -i "s/0.0.0-PLACEHOLDER/${PACKAGE_VERSION}/g" ./package.json

echo "Generating Git tag and release note for Version $PACKAGE_VERSION"

# Create Git Release tag and note
npm run semantic-release-post
