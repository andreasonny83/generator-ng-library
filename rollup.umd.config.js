// rollup.config.js

import nodeResolve from 'rollup-plugin-node-resolve-angular';
import commonjs from 'rollup-plugin-commonjs';

export default {
  entry: './build/ng-library.js',
  format: 'umd',
  moduleName: 'ng-library',
  dest: './dist/ng-library.umd.js',
  sourceMap: false,
  plugins: [
    nodeResolve({
      module: true,
      jsnext: true,
      main: true,
      extensions: [ '.js', '.json' ],
      preferBuiltins: false
    }),
    commonjs({
      include: 'node_modules/**',
    }),
  ],
};
