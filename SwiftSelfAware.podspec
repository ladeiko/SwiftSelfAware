Pod::Spec.new do |s|
  s.name             = "SwiftSelfAware"
  s.version          = "1.0.0"
  s.summary          = "Swift version of legacy Objective-C 'load' initialization."
  s.homepage         = "https://github.com/ladeiko/SwiftSelfAware"
  s.license          = 'MIT'
  s.authors          = { "Siarhei Ladzeika" => "sergey.ladeiko@gmail.com" }
  s.source           = { :git => "https://github.com/ladeiko/SwiftSelfAware.git", :tag => s.version.to_s }
  s.platform         = :ios, "9.0"
  s.requires_arc     = true
  s.source_files     = "Classes/**/*.{m,s,swift}"
  s.frameworks       = "UIKit"
end