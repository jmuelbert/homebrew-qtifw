                "eslint-plugin/prefer-placeholders": "error",
                "eslint-plugin/prefer-replace-text": "error",
                "eslint-plugin/report-message-format": ["error", "[^a-z].*\\.$"],
                "eslint-plugin/require-meta-docs-description": ["error", { pattern: "^(Enforce|Require|Disallow) .+[^. ]$" }],
                "internal-rules/no-invalid-meta": "error"
            }
        },
        {
            files: ["lib/rules/*"],
            excludedFiles: ["index.js"],
            rules: {
                "eslint-plugin/require-meta-docs-url": ["error", { pattern: "https://eslint.org/docs/rules/{{name}}" }]
            }
        },
        {
            files: ["tests/lib/rules/*", "tests/tools/internal-rules/*"],
            extends: [
                "plugin:eslint-plugin/tests-recommended"
            ],
            rules: {
                "eslint-plugin/prefer-output-null": "error",
                "eslint-plugin/test-case-property-ordering": "error",
                "eslint-plugin/test-case-shorthand-strings": "error"
            }
        },
        {
            files: ["tests/**/*"],
            env: { mocha: true },
            rules: {
                "no-restricted-syntax": ["error", {
                    selector: "CallExpression[callee.object.name='assert'][callee.property.name='doesNotThrow']",
                    message: "`assert.doesNotThrow()` should be replaced with a comment next to the code."
                }]
            }
        },

        // Restrict relative path imports
        {
            files: ["lib/*"],
            excludedFiles: ["lib/unsupported-api.js"],
            rules: {
                "n/no-restricted-require": ["error", [
                    ...createInternalFilesPatterns()
                ]]
            }
        },
        {
            files: [INTERNAL_FILES.CLI_ENGINE_PATTERN],
            rules: {
                "n/no-restricted-require": ["error", [
                    ...createInternalFilesPatterns(INTERNAL_FILES.CLI_ENGINE_PATTERN)
                ]]
            }
        },
        {
            files: [INTERNAL_FILES.LINTER_PATTERN],
            rules: {
                "n/no-restricted-require": ["error", [
                    ...createInternalFilesPatterns(INTERNAL_FILES.LINTER_PATTERN),
                    "fs",
                    resolveAbsolutePath("lib/cli-engine/index.js"),
