// rollup.config.js

import nodeResolve from 'rollup-plugin-node-resolve';
import commonjs from 'rollup-plugin-commonjs';
import uglify from 'rollup-plugin-uglify';

export default {
  entry: './build/ng-library.js',
  format: 'umd',
  moduleName: 'ng-library',
  dest: './dist/ng-library-umd.js',
  sourceMap: false,
  plugins: [
    nodeResolve({
      jsnext: true,
      module: true,
      main: true,  // for commonjs modules that have an index.js
      browser: true
    }),
    commonjs({
      include: 'node_modules/**',
    }),
    uglify(),
  ],
};
