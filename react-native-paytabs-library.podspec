require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-paytabs-library"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-paytabs-library
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-paytabs-library"
  s.license      = "MIT"
  s.authors      = { "Mohamed Adly" => "m.adly@paytabs.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-paytabs-library.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true
  
  s.resources = "resources/Resources.bundle"
  s.ios.vendored_frameworks = 'sdk_lite/paytabs-iOS.framework'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => "'${PODS_ROOT}'/sdk_lite/**", 'SWIFT_INCLUDE_PATHS' => "'${PODS_TARGET_SRCROOT}'/sdk_lite/**"}

  s.dependency "React"
  # s.dependency "PayTabsSDK", '4.0.10.rc.1'
  s.dependency 'BIObjCHelpers', '~> 0.4.3'
  s.dependency 'IQKeyboardManager'
  s.dependency 'AFNetworking', '~> 4.0.1'
  s.dependency 'Mantle', '~> 2.1.0'
  s.dependency 'Reachability', '~> 3.2'
  s.dependency 'Lockbox', '~> 3.0.6'
  s.dependency 'SBJson', '~> 5.0.0'
  s.dependency 'PINCache', '~> 2.3'
  s.dependency 'MBProgressHUD', '~> 1.1.0'
  s.dependency 'ActionSheetPicker-3.0', '~> 2.4.2'
end

