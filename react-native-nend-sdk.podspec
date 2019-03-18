require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-nend-sdk"
  s.version      = package['version']
  s.summary      = 'Adapters bridging the NendSDK to React Native.'
  s.description  = package['description']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.author       = package['author']
  s.platform     = :ios, "9.0"

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.source       = { :git => "https://github.com/link-u/react-native-nend-sdk.git", :tag => "v#{s.version}" }
  s.source_files = 'ios/**/*.{h,m,swift}'
  s.requires_arc = true


  s.dependency 'React'
  s.dependency 'NendSDK_iOS', '>= 5.1.1'

end

