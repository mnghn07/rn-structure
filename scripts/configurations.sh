
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

# Adds eslint config to .eslintrc.js
echo "Adding eslint config to .eslintrc.js..."
echo "module.exports = {
  root: true,
  parser: '@typescript-eslint/parser',
  plugins: ['@typescript-eslint/eslint-plugin'],
  extends: ['prettier'],
};" >> .eslintrc.js