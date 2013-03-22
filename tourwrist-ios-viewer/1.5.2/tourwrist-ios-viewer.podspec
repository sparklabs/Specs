
Pod::Spec.new do |s|
  s.name         = "tourwrist-ios-viewer"
  s.version      = "1.5.2"
  s.summary      = "OpenGL viewer for panos - used in the iOS SDK."
  s.license      = "PRIVATE NO TOUCHY"
  s.homepage     = "git@github.com:sparklabs/tourwrist-ios-viewer.git"
  s.author       = { "Brian Foshee" => "brianfoshee@gmail.com" }
  s.source       = { :git => "git@github.com:sparklabs/tourwrist-ios-viewer.git", :tag => "1.5.2" }
  s.platform     = :ios, '6.0'
  s.source_files = '*.{h,m}'
  s.public_header_files = 'TourView.h', 'OrientationManager.h', 'Annotation.h'
  s.requires_arc = false
end
