# {plugin}
[![Build Status](https://secure.travis-ci.org/{githubPath}.svg?branch=master)](http://travis-ci.org/{githubPath})
[![NPM version](https://badge.fury.io/js/{plugin}.png)](http://badge.fury.io/js/{plugin})
[![Dependency Status](https://david-dm.org/{githubPath}.png)](https://david-dm.org/{githubPath})

`jscs {plugin}` plugin for [jscs](https://github.com/mdevils/node-jscs/).

## Friendly packages

 * JSCS: https://github.com/mdevils/node-jscs/

## Plugin installation

`jscs-plugin` can be installed using `npm`.
Install it globally if you are using globally installed `jscs`

    npm -g install {package}

Or install it into your project

    npm install {package} --save-dev

## Usage

To use plugin you should add it to configuration file `.jscsrc`:

```js
{
    "additionalRules": [
        "node_modules/{package}/lib/rules/*.js"
    ]
}
```

## Browser Usage

File [jscs-{plugin}-browser.js](jscs-{plugin}-browser.js) contains browser-compatible version of `jscs-{plugin}`.

Download and include `jscs-{plugin}-browser.js` into your page just after `jscs-browser.js`.

```html
<script src="jscs-browser.js"></script>
<script src="jscs-{plugin}-browser.js"></script>
<script>
    var checker = new JscsStringChecker();
    checker.registerDefaultRules();
    checker.configure({'{plugin}': {...}});
    var errors = checker.checkString('var x, y = 1;');
    errors.getErrorList().forEach(function(error) {
        console.log(errors.explainError(error));
    });
</script>
```
