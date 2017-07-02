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