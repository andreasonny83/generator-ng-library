# ng library generator
> Generator for Angular2+ libraries

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)

## Introduction

This generator is optimized for creating Angular >= 4.0.0 libraries. 

This project has been created following the best practices and guidelines from [Angular.io](https://angular.io/docs) and the [Packaging Angular talk from Jason Aden](https://www.youtube.com/watch?v=unICbsPGFIA).

## Table of contents

- [ng library generator](#ng-library-generator)
  - [Introduction](#introduction)
  - [Table of contents](#table-of-contents)
  - [Deployment](#deployment)
    - [Copy the token](#copy-the-token)
    - [Set the token as CI environment variable](#set-the-token-as-ci-environment-variable)

## Deployment

Login into your project's NPM registry.
If you don't have an account yet, [sign up here](https://www.npmjs.com/signup)

```sh
npm login
```

### Copy the token

The login step added a line to your `~/.npmrc` file looking something like this

```
//registry.npmjs.org/:_authToken=00000000-0000-0000-0000-000000000000
```

Grab the auth token value `00000000-0000-0000-0000-000000000000` 

### Set the token as CI environment variable

Go to your TravisCI project settings and add a new environment variable called `NPM_TOKEN` with the value you have just copied.
