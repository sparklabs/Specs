
Pod::Spec.new do |s|
  s.name         = "tourwrist-ios-sdk"
  s.version      = "1.0.5"
  s.summary      = "iOS SDK for in-house TourWrist app and 3rd party apps."
  s.description  = <<-DESC
                      SDK for TourWrist.
                   DESC
  s.license      = "PRIVATE NO TOUCHY"
  s.homepage     = "https://github.com/sparklabs/tourwrist-ios-sdk"
  s.author       = { "Brian Foshee" => "brianfoshee@gmail.com" }
  s.source       = { :git => "https://github.com/sparklabs/tourwrist-ios-sdk.git", :tag => "1.0.5" }
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.source_files = 'tourwrist-ios-sdk/**/*.{h,m}'
  # s.public_header_files = 'TWSessionManager.h', 'Pano.h', 'Tour.h', 'Category.h','User.h', 'TWPanoViewerController.h'
  
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  # s.libraries = 'iconv', 'xml2'

  # If you need to specify any other build settings, add them to the
  # xcconfig hash.
  #
  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
   s.prefix_header_contents = <<-EOS
   #ifdef DEBUG
   #define DebugLog( s, ... ) NSLog( @"<%p %@:(%d)> %@", self, [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
   #else
   #define DebugLog( s, ... )
   #endif
  EOS
  s.dependency 'AFNetworking', '~> 1.1.0'
  s.dependency 'KeychainItemWrapper', '~> 1.2'
  s.dependency 'tourwrist-ios-viewer', '~> 1.5.2'
end
