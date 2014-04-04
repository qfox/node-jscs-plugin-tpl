var assert = require('assert');

module.exports = function() {};

module.exports.prototype = {

    getOptionName: function() {
        return 'pluginValidationRules';
    },

    configure: function(pluginValidationRules) {
        assert(
            typeof pluginValidationRules === 'object',
            'pluginValidationRules option requires object value'
        );
    },

    check: function(file, errors) {
        file.iterateTokensByType('Punctuator', function(token, i, tokens) {
            if (token.value === ',') {
                var nextToken = tokens[i + 1];
                if (nextToken && nextToken.loc.start.line !== token.loc.end.line) {
                    errors.add(
                        'Commas should be placed on new line',
                        token.loc.end.line,
                        token.loc.end.column
                    );
                }
            }
        });
    }

};
