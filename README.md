# React Fatigue Webpack

Based on the awesome [tj/react-fatigue-dev](https://github.com/tj/react-fatigue-dev), I've created this version using `webpack` instead of `browserify`,

IMO, it have a bit more of boilerplate on the Makefile.

Module of modules and Makefile to reduce the amount of boilerplate when developing React components.

## Installation

```
$ npm install oieduardorabelo/react-fatigue-webpack
```

## Usage

Add this module as a dev dependency, and add the following to your project's Makefile:

```Makefile
include node_modules/react-fatigue-dev/Makefile
```

You'll now have a number of targets available, see `make help` for details. You may customize the default behaviour by overriding the Makefile variables, view `./Makefile` to see the defaults.

For example use port `:8000` instead of `:3000`, and instead of serving `./example`, serve `./test`:


```Makefile
WBP_PATH = --content-base test
WBP_PORT = --port 8000
WBP_ENTRY = test/index.js
include node_modules/react-fatigue-webpack/Makefile
```

## Includes

- babel-cli
- babel-core
- babel-loader
- babel-preset-es2015
- babel-preset-react
- babel-preset-stage-0
- css-loader
- react
- react-dom
- style-loader
- webpack
- webpack-dev-server

## Badges

![](https://img.shields.io/badge/license-MIT-blue.svg)
![](https://img.shields.io/badge/status-stable-green.svg)

---

> [eduardorabelo.me](http://eduardorabelo.me) &nbsp;&middot;&nbsp;
> GitHub [@oieduardorabelo](https://github.com/oieduardorabelo) &nbsp;&middot;&nbsp;
> Twitter [@oieduardorabelo](https://twitter.com/oieduardorabelo)
