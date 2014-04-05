# node-jscs plugin volo tpl [![Build Status](https://travis-ci.org/zxqfox/node-jscs-plugin-tpl.svg?branch=master)](https://travis-ci.org/zxqfox/node-jscs-plugin-tpl)

JSCS plugin volo template

## To create empty stub use volo

```
npm install volo
volo create {place here your plugin name} zxqfox/node-jscs-plugin-tpl
```

## Friendly packages

 * JSCS: https://github.com/mdevils/node-jscs/

## Plugin installation

`jscs-plugin` can be installed using `npm`:

```
npm install jscs-plugin
```

To use plugin you should add it to configuration file `.jscsrc`:

```
{
  ...
  "additionalRules": [
    'node_modules/jscs-plugin/rules/*'
  ]
}
```

## Browser Usage

File [jscs-plugin-browser.js](jscs-plugin-browser.js) contains browser-compatible version of `jscs-plugin`.

Download and include `jscs-plugin-browser.js` into your page just after `jscs-browser.js`.

```html
<script src="jscs-browser.js"></script>
<script src="jscs-plugin-browser.js"></script>
<script>
    var checker = new JscsStringChecker();
    checker.registerDefaultRules();
    checker.configure({yourPluginRules: {...}});
    var errors = checker.checkString('var x, y = 1;');
    errors.getErrorList().forEach(function(error) {
        console.log(errors.explainError(error));
    });
</script>
```
