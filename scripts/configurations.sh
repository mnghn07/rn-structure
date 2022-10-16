
echo "Setting up some configuration files..."

echo "Adding module exports..."
touch react-native.config.js
echo "module.exports = {
  project: {
    ios: {},
    android: {},
  },
  assets: ['./src/assets/fonts/'],
};" >> react-native.config.js

echo "Adding .env file..."
touch .env
echo "API_URL=http://localhost:3333" >> .env

# Adds module resolver to babel.config.js
echo "Adding module resolver to babel.config.js..."
echo "module.exports = {
  presets: ['module:metro-react-native-babel-preset'],
  plugins: [
    [
      'module-resolver',
      {
        root: ['./'],
        alias: {
          '@': './src',
        },
      },
    ],
  ],
};" >> babel.config.js

# Adds config to tsconfig.json
echo "Adding config to tsconfig.json..."
echo "// prettier-ignore
{
  'extends': '@tsconfig/react-native/tsconfig.json',     /* Recommended React Native TSConfig base */
  'compilerOptions': {
    /* Visit https://aka.ms/tsconfig.json to read more about this file */

    /* Completeness */
    'skipLibCheck': true,                                 /* Skip type checking all .d.ts files. */
    'moduleResolution': 'node',                          /* Specify how TypeScript looks up a file from a given module specifier. */
    'baseUrl': './',                                  /* Specify the base directory to resolve non-relative module names. */
    'paths': {
      '@/*': ['src/*']
    },
    'resolveJsonModule': true,
  },
}" >> tsconfig.json

# Adds eslint config to .eslintrc.js
echo "Adding eslint config to .eslintrc.js..."
echo "module.exports = {
  root: true,
  parser: '@typescript-eslint/parser',
  plugins: ['@typescript-eslint/eslint-plugin'],
  extends: ['prettier'],
};" >> .eslintrc.js

# Adds prettier config to .prettierrc.js
echo "Adding prettier config to .prettierrc.js..."
echo "module.exports = {
  bracketSpacing: true,
  singleQuote: false,
  trailingComma: 'all',
  semi: true,
  arrowParens: 'avoid',
};" >> .prettierrc.js

# Adds .editorconfig
echo "Adding .editorconfig..."
touch .editorconfig
echo "root = true

[*]
indent_style = space
indent_size = 2
charset = utf-8 
trim_trailing_whitespace = true
insert_final_newline = true" >> .editorconfig
