# Installing packages
echo "Installing packages..."

# Add prettier, eslint, other configs to the project
echo "Installing packages [1/4]..."
yarn add --dev prettier
yarn add --dev eslint
yarn add --dev eslint-config-prettier
yarn add --dev @typescript-eslint/eslint-plugin
yarn add --dev @typescript-eslint/parser
yarn add --def @react-native-community/eslint-config

# Add husky, lint-staged, commitlint, other configs to the project
echo "Installing packages [2/4]..."
yarn add --dev husky lint-staged
npx husky install
npm set-script prepare "husky install"
npx husky add .husky/pre-commit "npx lint-staged"

# Add module resolver to the project
echo "Installing module resolver [3/4]..."
yarn add --dev babel-plugin-module-resolver

# Add react-native-config to the project
echo "Installing react-native-config [4/4]..."
yarn add react-native-config








