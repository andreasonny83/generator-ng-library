# Copyright (c) 2017 AndreaSonny <andreasonny83@gmail.com> (https://github.com/andreasonny83)
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

#!/bin/bash

# Clean up previous build
rm -rf dist
rm -rf build

# Variable pointing to Angular Compiler CLI
NGC="node_modules/.bin/ngc"
ROLLUP="node_modules/.bin/rollup"

# Run Angular Compiler
$NGC -p src/tsconfig-build.json
$ROLLUP build/ng-library.js -o dist/ng-library.js

cp src/package.json dist/package.json
cp src/README.md dist/README.md
cp src/LICENSE dist/LICENSE
