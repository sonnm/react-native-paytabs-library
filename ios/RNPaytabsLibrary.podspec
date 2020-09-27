
Pod::Spec.new do |s|
  s.name         = "RNPaytabsLibrary"
  s.version      = "1.0.8"
  s.summary      = "RNPaytabsLibrary"
  s.description  = <<-DESC
                  RNPaytabsLibrary
                   DESC
  s.homepage     = "https://www.paytabs.com"
  s.license      = "MIT"
  s.author             = { "author" => "rhegazy@paytabs.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/paytabscom/react-native-paytabs-library.git", :tag => "master" }
  s.source_files  = "RNPaytabsLibrary/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "BIObjCHelpers"
  s.dependency "AFNetworking"
  s.dependency "Mantle"
  s.dependency "Reachability"
  s.dependency "Lockbox"
  s.dependency "SBJson"
  s.dependency "PINCache"
  s.dependency "IQKeyboardManager"
  s.dependency "MBProgressHUD"
end

  
