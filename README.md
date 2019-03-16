
# react-native-paytabs-library

## Getting started

`$ npm install react-native-paytabs-library --save`

### Mostly automatic installation

`$ react-native link react-native-paytabs-library`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-paytabs-library` and add `RNPaytabsLibrary.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPaytabsLibrary.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPaytabsLibraryPackage;` to the imports at the top of the file
  - Add `new RNPaytabsLibraryPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-paytabs-library'
  	project(':react-native-paytabs-library').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-paytabs-library/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-paytabs-library')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNPaytabsLibrary.sln` in `node_modules/react-native-paytabs-library/windows/RNPaytabsLibrary.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Paytabs.Library.RNPaytabsLibrary;` to the usings at the top of the file
  - Add `new RNPaytabsLibraryPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNPaytabsLibrary from 'react-native-paytabs-library';

// TODO: What to do with the module?
RNPaytabsLibrary;
```
  