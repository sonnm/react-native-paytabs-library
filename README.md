
# @gardencoder/react-native-paytabs-library@1.0.1

## Getting started

`$ npm install @gardencoder/react-native-paytabs-library@1.0.1 --save`

### Mostly automatic installation

`$ react-native link @gardencoder/react-native-paytabs-library@1.0.1`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `@gardencoder/react-native-paytabs-library@1.0.1` and add `RNPaytabsLibrary.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPaytabsLibrary.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPaytabsLibraryPackage;` to the imports at the top of the file
  - Add `new RNPaytabsLibraryPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':@gardencoder/react-native-paytabs-library@1.0.1'
  	project(':@gardencoder/react-native-paytabs-library@1.0.1').projectDir = new File(rootProject.projectDir, 	'../node_modules/@gardencoder/react-native-paytabs-library@1.0.1/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':@gardencoder/react-native-paytabs-library@1.0.1')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNPaytabsLibrary.sln` in `node_modules/@gardencoder/react-native-paytabs-library@1.0.1/windows/RNPaytabsLibrary.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Paytabs.Library.RNPaytabsLibrary;` to the usings at the top of the file
  - Add `new RNPaytabsLibraryPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNPaytabsLibrary from '@gardencoder/react-native-paytabs-library@1.0.1';

// TODO: What to do with the module?
RNPaytabsLibrary;
```
  