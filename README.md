
# react-native-paytabs-library
![Version](https://img.shields.io/badge/Paytabs%20React%20Native%20library-v1.0.6-green)
## Getting started

`$ npm install @paytabscom/react-native-paytabs-library@1.0.6 --save`

### Step 1: Link Library

`$ react-native link @paytabscom/react-native-paytabs-library@1.0.6`

OR Manual installation

#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `@paytabscom/react-native-paytabs-library` and add `RNPaytabsLibrary.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPaytabsLibrary.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPaytabsLibraryPackage;` to the imports at the top of the file
  - Add `new RNPaytabsLibraryPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```groovy
  	include ':@paytabscom/react-native-paytabs-library@1.0.6'
  	project(':@paytabscom/react-native-paytabs-library@1.0.6').projectDir = new File(rootProject.projectDir, 	'../node_modules/@paytabscom/react-native-paytabs-library@1.0.6/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```groovy
      compile project(':@paytabscom/react-native-paytabs-library@1.0.6')
  	```

### Step 2:

#### iOS

1. Open up `ios/` and create/modify `Podfile` [example/ios/Podfile](example/ios/Podfile), make sure to add all dependencies correctly.
2. Run terminal `Pod install`
3. Open `your-project-name.xcworkspace` with XCode, drag [example/ios/paytabs-iOS.framework](example/ios/paytabs-iOS.framework) to your project, same for [example/ios/Resources.bundle](example/ios/Resources.bundle)

#### Android

1. Append the following lines to `android/settings.gradle`:
  ```groovy
    include ':paytabs_sdk-v4.0.1'
    project(':paytabs_sdk-v4.0.1').projectDir = new File(rootProject.projectDir, '../node_modules/@react-native-paytabs-library/android/paytabs_sdk-v4.0.1/')
  ```

## Usage
```javascript
import RNPaytabsLibrary from '@paytabscom/react-native-paytabs-library';

RNPaytabsLibrary.start({
  [RNPaytabsLibrary.merchant_email]: "merchant_email",
  [RNPaytabsLibrary.secret_key]: "merchant_secret_ket",
  [RNPaytabsLibrary.transaction_title]: "Mr. John Doe",
  [RNPaytabsLibrary.amount]: "2.0",
  [RNPaytabsLibrary.currency_code]: "USD",
  [RNPaytabsLibrary.customer_email]: "test@example.com",
  [RNPaytabsLibrary.customer_phone_number]: "+97333109781",
  [RNPaytabsLibrary.order_id]: "1234567",
  [RNPaytabsLibrary.product_name]: "Tomato",
  [RNPaytabsLibrary.timeout_in_seconds]: "300", //Optional
  [RNPaytabsLibrary.address_billing]: "test test",
  [RNPaytabsLibrary.city_billing]: "Juffair",
  [RNPaytabsLibrary.state_billing]: "Manama",
  [RNPaytabsLibrary.country_billing]: "BHR",
  [RNPaytabsLibrary.postal_code_billing]: "00973", //Put Country Phone code if Postal code not available '00973'//
  [RNPaytabsLibrary.address_shipping]: "test test",
  [RNPaytabsLibrary.city_shipping]: "Juffair",
  [RNPaytabsLibrary.state_shipping]: "Manama",
  [RNPaytabsLibrary.country_shipping]: "BHR",
  [RNPaytabsLibrary.postal_code_shipping]: "00973", //Put Country Phone code if Postal
  [RNPaytabsLibrary.color]: "#cccccc",
  [RNPaytabsLibrary.language]: 'en', // 'en', 'ar'
  [RNPaytabsLibrary.tokenization]: true,
  [RNPaytabsLibrary.preauth]: false
}, (response) => {
  // Callback for success & fail.

  // { pt_token_customer_email: '',pt_token: '',pt_token_customer_password: '', pt_transaction_id: '123456',pt_response_code: '100' }

  RNPaytabsLibrary.log("on Response Payment");
  console.log(response);
  // Response Code: 100 successful otherwise fail
  if (response.pt_response_code == '100')
    RNPaytabsLibrary.log("Transaction Id: " + response.pt_transaction_id);
  else
    RNPaytabsLibrary.log("Otherwise Response: " + response.pt_response_code);

  this.state = { message: response.pt_transaction_id };

  // Tokenization
  //RNPaytabs.log(response.pt_token_customer_email);
  //RNPaytabs.log(response.pt_token_customer_password);
  //RNPaytabs.log(response.pt_token);

});
```
