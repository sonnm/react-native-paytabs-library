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

  s.dependency "React"
  s.dependency "PayTabsSDK", '4.0.10.rc.1'
end

