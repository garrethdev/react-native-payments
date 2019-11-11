require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
s.name         = "ReactNativePayments"
  s.version      = package["version"]
  s.summary      = "react-native-payments"
  s.description  = <<-DESC
                  Native Payments (Google and Apple Pay) from React-Native
                   DESC
  s.homepage     = package["repository"]
  s.authors      = "Naoufal Kadhom"
  s.license      = "MIT"
  s.source         = { :git => 'https://github.com/naoufal/react-native-payments', :tag => s.version }

  s.requires_arc   = true
  s.platform       = :ios, '10.0'

  s.preserve_paths = 'LICENSE', 'README.md'
  s.source_files   = 'lib/ios/**/*.{h,m}'

  s.dependency 'React'
end
