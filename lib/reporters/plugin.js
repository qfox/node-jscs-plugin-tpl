/**
 * @param {Errors[]} errorsCollection
 */
module.exports = function(errorsCollection) {
    var errorCount = 0;
    /**
     * Formatting every error set.
     */
    errorsCollection.forEach(function(errors) {
        if (!errors.isEmpty()) {
            /**
             * Formatting every single error.
             */
            errors.getErrorList().forEach(function(error) {
                errorCount++;
                console.log('plugin: ', errors.explainError(error) + '\n');
            });
        }
    });
    if (errorCount) {
        /**
         * Printing summary.
         */
        console.log('\nplugin: ' + errorCount + ' code style ' + (errorCount === 1 ? 'error' : 'errors') + ' found.');
    } else {
        console.log('plugin: No code style errors found.');
    }
};
