module.exports = {
  extends: [
    "eslint:recommended",
    "plugin:@typescript-eslint/strict",
    "turbo",
    "prettier",
  ],
  parserOptions: {
    sourceType: "module",
  },
  plugins: ["@typescript-eslint"],
  rules: {
    "no-unused-vars": "off",
    "@typescript-eslint/no-unused-vars": [
      "warn",
      {
        argsIgnorePattern: "^_",
        varsIgnorePattern: "^_",
        caughtErrorsIgnorePattern: "^_",
      },
    ],
    "@typescript-eslint/no-explicit-any": "error",
    "@typescript-eslint/no-misused-promises": "error",
    "@typescript-eslint/no-floating-promises": "error",
  },
};
