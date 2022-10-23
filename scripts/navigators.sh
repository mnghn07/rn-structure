# setting up navigation
# ---------------------
echo "Installing react-navigation..."

# install react-navigation
yarn add @react-navigation/native
yarn add react-native-screens react-native-safe-area-context
npx pod-install ios

echo "Please wrap NavigationContainer around your app in App.js"
echo "Please add code to MainActivity in Android"
# TODO: add code to MainActivity in Android

# Adding native-stack
echo "Installing native-stack..."
yarn add @react-navigation/native-stack
