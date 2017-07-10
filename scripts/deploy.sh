# Copyright (c) 2017 AndreaSonny <andreasonny83@gmail.com> (https://github.com/andreasonny83)
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

#!/bin/bash

# The script should immediately exit if any command in the script fails.
set -e

# Go to the project root directory
cd $(dirname ${0})/..

# Publish to NPM
cd ./dist
npm install
npm run semantic-release
