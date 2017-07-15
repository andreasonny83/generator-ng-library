// rollup.config.js

// import nodeResolve from 'rollup-plugin-node-resolve-angular';
// import commonjs from 'rollup-plugin-commonjs';

export default {
  entry: './build/ng-library.js',
  moduleName: 'ng-library',
  format: 'es',
  dest: './dist/ng-library.es5.js',
  sourceMap: false
};
