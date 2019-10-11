
#import "RNPaytabsLibrary.h"
#import <React/RCTLog.h>
#import <UIKit/UIKit.h>
#import <paytabs-iOS/paytabs_iOS.h>

@implementation RNPaytabsLibrary

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

- (NSArray<NSString *> *)supportedEvents
{
  return @[@"EventPreparePaypage"];
}

RCT_EXPORT_METHOD(log:(NSString *)name )
{
    RCTLogInfo(@"Paytabs React Native: %@", name);
}

RCT_EXPORT_METHOD(start:(NSDictionary *)paymentDetails withCallBack:(RCTResponseSenderBlock) callback)
{

    NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"Resources" withExtension:@"bundle"]];
    UIViewController *rootViewController = [[[[UIApplication sharedApplication]delegate] window] rootViewController];

     PTFWInitialSetupViewController *view =  [[PTFWInitialSetupViewController alloc] initWithBundle:bundle andWithViewFrame:rootViewController.view.frame andWithAmount:[[paymentDetails valueForKey:@"pt_amount"] intValue] andWithCustomerTitle:[paymentDetails valueForKey:@"pt_transaction_title"] andWithCurrencyCode:[paymentDetails valueForKey:@"pt_currency_code"] andWithTaxAmount:0.0 andWithSDKLanguage:[paymentDetails valueForKey:@"pt_language"] andWithShippingAddress:[paymentDetails valueForKey:@"pt_address_shipping"] andWithShippingCity:[paymentDetails valueForKey:@"pt_city_shipping"] andWithShippingCountry:[paymentDetails valueForKey:@"pt_country_shipping"] andWithShippingState:[paymentDetails valueForKey:@"pt_state_shipping"] andWithShippingZIPCode:[paymentDetails valueForKey:@"pt_postal_code_shipping"] andWithBillingAddress:[paymentDetails valueForKey:@"pt_address_billing"] andWithBillingCity:[paymentDetails valueForKey:@"pt_city_billing"] andWithBillingCountry:[paymentDetails valueForKey:@"pt_country_billing"]  andWithBillingState:[paymentDetails valueForKey:@"pt_state_billing"] andWithBillingZIPCode:[paymentDetails valueForKey:@"pt_postal_code_billing"] andWithOrderID:[paymentDetails valueForKey:@"pt_order_id"] andWithPhoneNumber:[paymentDetails valueForKey:@"pt_customer_phone_number"] andWithCustomerEmail:[paymentDetails valueForKey:@"pt_customer_email"] andIsTokenization:[[paymentDetails valueForKey:@"pt_tokenization"] boolValue] andIsPreAuth:[[paymentDetails valueForKey:@"pt_preauth"] boolValue] andWithMerchantEmail:[paymentDetails valueForKey:@"pt_merchant_email"] andWithMerchantSecretKey:[paymentDetails valueForKey:@"pt_secret_key"] andWithAssigneeCode:@"SDK" andWithThemeColor:[self colorWithHexString:[paymentDetails valueForKey:@"pt_color"]] andIsThemeColorLight:YES];

     view.didReceiveBackButtonCallback = ^{
         UIViewController *rootViewController = [[[[UIApplication sharedApplication]delegate] window] rootViewController];
         [rootViewController dismissViewControllerAnimated:YES completion:nil];
     };

     view.didStartPreparePaymentPage = ^{
         // Start Prepare Payment Page
         [self sendEventWithName:@"EventPreparePaypage" body:@{@"action": @"start"}];
     };

     view.didFinishPreparePaymentPage = ^{
         // Finish Prepare Payment Page
         [self sendEventWithName:@"EventPreparePaypage" body:@{@"action": @"finish"}];
     };
     
     view.didReceiveFinishTransactionCallback = ^(int responseCode, NSString * _Nonnull result, int transactionID, NSString * _Nonnull tokenizedCustomerEmail, NSString * _Nonnull tokenizedCustomerPassword, NSString * _Nonnull token, BOOL transactionState) {
         callback(@[@{
                        @"pt_response_code":[NSString stringWithFormat:@"%i", responseCode],
                        @"pt_transaction_id":[NSString stringWithFormat:@"%i", transactionID],
                        @"pt_token_customer_email":tokenizedCustomerEmail,
                        @"pt_token_customer_password":tokenizedCustomerPassword,
                        @"pt_token":token
                        }]);
     };

     [rootViewController presentViewController:view animated:true completion:nil];
}

- (UIColor *)colorWithHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}
@end
  
