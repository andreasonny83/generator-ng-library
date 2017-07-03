# ng library generator
> Generator for Angular2+ libraries

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)

**Table of Contents**

- [ng library generator](#ng-library-generator)
  - [Introduction](#introduction)
  - [NPM Deployment](#npm-deployment)
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

### Crypt your credentials

Generate a authentication token crypting your npm credentials with the following command:

```sh
echo -n 'username:password' | openssl base64
```

This will output a key like this: `dXNlcm5hbWU6cGFzc3dvcmQ=`

### TravisCI configuration

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
