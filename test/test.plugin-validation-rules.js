var Checker = require('../node_modules/jscs/lib/checker');
var assert = require('assert');

describe('rules/plugin-validation-rules', function() {
    var checker;
    beforeEach(function() {
        checker = new Checker();
        checker.registerDefaultRules();
        checker.configure({ additionalRules: ["./lib/rules/*"] });
    });
    it('should not fail', function() {
        checker.configure({ pluginValidationRules: {} });
        assert(
            checker.checkString(
                'var x = 1, y = 2;'
            ).getErrorCount() === 0
        );
    });
});
