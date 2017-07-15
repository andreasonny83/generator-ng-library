// rollup.config.js

import nodeResolve from 'rollup-plugin-node-resolve-angular';
import commonjs from 'rollup-plugin-commonjs';
import cleanup from 'rollup-plugin-cleanup';
// import uglify from 'rollup-plugin-uglify';

export default {
  entry: './build/ng-library.js',
  format: 'es',
  dest: './dist/ng-library.js',
  moduleName: 'ng-library',
  sourceMap: false,
  treeshake: true,
  plugins: [
    nodeResolve({
  //     // es2015: true,
  //     // module: true,
  //     // jsnext: true,
  //     // main: true,
  //     // extensions: [ '.js', '.json' ],
  //     // preferBuiltins: false
    }),
    commonjs({
      include: 'node_modules/**',
    }),
  //   cleanup(),
  ]
};
