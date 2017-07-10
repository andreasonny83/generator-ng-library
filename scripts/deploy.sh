# Copyright (c) 2017 AndreaSonny <andreasonny83@gmail.com> (https://github.com/andreasonny83)
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

#!/bin/bash

# The script should immediately exit if any command in the script fails.
set -e

# Go to the project root directory
cd $(dirname ${0})/..

# VERSION_TYPE="${1:-patch}"

# Commit a new tag
# npm version ${VERSION_TYPE}
# git push origin master --tags

# Command line arguments.
# COMMAND_ARGS=${*}

PACKAGE_VERSION=$(cat ./package.json \
  | grep version \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[",]//g' \
  | tr -d '[[:space:]]')

# Write npmrc file for NPM publishing
# rm -Rf ./dist/.npmrc

# cat >> ./dist/.npmrc << EOF
# always-auth=true
# email=${NPM_EMAIL}
# _auth=${NPM_TOKEN}
# EOF

echo "Deploying version: $PACKAGE_VERSION"

# Update the package.json version
sed -i "s/0.0.0-PLACEHOLDER/${PACKAGE_VERSION}/g" ./dist/package.json

# Publish to NPM
cd ./dist
npm run semantic-release
