{
  "name": "{package}",
  "author": "{authorName} <{authorEmail}>",
  "description": "JSCS {pluginName} plugin",
  "version": "0.0.1",
  "main": "lib/index",
  "homepage": "https://{githubUrl}",
  "license": "MIT",
  "repository": {
    "type": "git",
    "url": "https://{githubUrl}"
  },
  "bugs": {
    "url": "https://{githubUrl}/issues"
  },
  "contributors": [
    "{authorName} <{authorEmail}>"
  ],
  "engines": {
    "node": ">= 0.8.0"
  },
  "dependencies": {},
  "devDependencies": {
    "jscs": "~1.3.0",
    "jshint": "~2.4.4",
    "browserify": "~3.30.2",
    "mocha": "~1.17.1"
  },
  "peerDependencies": {
    "jscs": "1.3.x"
  },
  "scripts": {
    "lint": "jshint . && jscs lib test",
    "test": "npm run lint && mocha -u bdd -R spec"
  },
  "files": [
    "lib",
    "LICENSE"
  ],
  "licenses": [
    {
      "type": "MIT",
      "url": "http://{githubUrl}/raw/master/LICENSE"
    }
  ]
}
