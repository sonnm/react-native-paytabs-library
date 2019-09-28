
Pod::Spec.new do |s|
  s.name         = "RNPaytabsLibrary"
  s.version      = "1.0.0"
  s.summary      = "RNPaytabsLibrary"
  s.description  = <<-DESC
                  RNPaytabsLibrary
                   DESC
  s.homepage     = "https://www.paytabs.com"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNPaytabsLibrary.git", :tag => "master" }
  s.source_files  = "RNPaytabsLibrary/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "BIObjCHelpers"
  s.dependency "AFNetworking"
  s.dependency "Mantle"
  s.dependency "Reachability"
  s.dependency "SDWebImage"
  s.dependency "DGActivityIndicatorView"
  s.dependency "Lockbox"
  s.dependency "YLGIFImage"
  s.dependency "SBJson"
  s.dependency "PINCache"
  s.dependency "IQKeyboardManager"
end

  
