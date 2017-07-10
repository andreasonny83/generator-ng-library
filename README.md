# ng library generator
> Generator for Angular2+ libraries

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![Build Status](https://travis-ci.org/andreasonny83/generator-ng-library.svg?branch=master)](https://travis-ci.org/andreasonny83/generator-ng-library)

**Table of Contents**

- [ng library generator](#ng-library-generator)
  - [Introduction](#introduction)
  - [NPM Deployment](#npm-deployment)
    - [Setup Semantic-release-cli](#setup-semantic-release-cli)
    - [Crypt your credentials](#crypt-your-credentials)
    - [TravisCI configuration](#travisci-configuration)
  - [Deployment lifecycle](#deployment-lifecycle)

## Introduction

This generator is optimized for creating Angular >= 4.0.0 libraries.

This project has been created following the best practices and guidelines from [Angular.io](https://angular.io/docs) and the [Packaging Angular talk from Jason Aden](https://www.youtube.com/watch?v=unICbsPGFIA).

## NPM Deployment

Login into your project's NPM registry.
If you don't have an account yet, [sign up here](https://www.npmjs.com/signup)

```sh
npm login
```

### Setup Semantic-release-cli

Semantic-release-cli provides you with a fully automated package publishing.
Read more about the Semantic-release-cli [here](https://github.com/semantic-release/semantic-release#readme).

Install the npm package globally on your machine

```sh
npm install -g semantic-release-cli
```

then, navigate inside your library root folder and run:

```sh
semantic-release-cli setup
```

And answer the questions required for the installation process
just make sure to answer `No` to the last one as we
already have a `.travis.yml` configuration file.

```sh
? What is your npm registry? https://registry.npmjs.org/
? What is your npm username? your username
? What is your GitHub username? your username
? What is your GitHub two-factor authentication code? xxxxxxx
? What CI are you using? Travis CI
? Do you want a `.travis.yml` file with semantic-release setup? No
# Important to select No to avoid overwriting the already exisisting `.travis.yml` file.
```

### Crypt your credentials
**DEPRECATED**

Generate a authentication token crypting your npm credentials with the following command:

```sh
echo -n 'username:password' | openssl base64
```

This will output a key like this: `dXNlcm5hbWU6cGFzc3dvcmQ=`

### TravisCI configuration
**DEPRECATED**

Reach your TravisCI project settings and add a new environment variable called `NPM_TOKEN` with the token previously generated.
Then create another environment variable in TravisCI called `NPM_EMAIL` and set it to the npm user email address linked to your
previous login credentials used for generating the token.

Then the deployment script stored in the `scripts/deploy.sh` will be responsable for automatically deploy your library
to NPM every time a new version is present in the `package.json` file.

## Deployment lifecycle

1. Create your new code change in your local directory
1. Commit your changes using Commitizen with `npm run commit`
1. Release a new npm version using semantic versioning with `npm version patch | minor | major`
1. Push your changes
1. Wait for Travis to publish your new version
