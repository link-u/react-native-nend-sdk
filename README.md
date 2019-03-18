
# react-native-react-native-nend-sdk

## Getting started

`$ npm install react-native-react-native-nend-sdk --save`

### Mostly automatic installation (android only)

`$ react-native link react-native-react-native-nend-sdk`

### Manual installation

#### iOS

Requires Cocoapods and iOS >= 9.0.
Add the following to your podfile (create it in your ios folder) and run pod install:

```ruby
...
use_modular_headers!
...
target ... do
...
  pod 'yoga', path: '../node_modules/react-native/ReactCommon/yoga'
  pod 'React', path: '../node_modules/react-native'
  pod 'react-native-nend-sdk', path: '../node_modules/react-native-nend-sdk'
...
end
```

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNReactNativeNendSdkPackage;` to the imports at the top of the file
  - Add `new RNReactNativeNendSdkPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-react-native-nend-sdk'
  	project(':react-native-react-native-nend-sdk').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-react-native-nend-sdk/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-react-native-nend-sdk')
  	```

## Usage
```javascript
import ReactNativeNendSdk from 'react-native-react-native-nend-sdk';

// TODO: What to do with the module?

```
