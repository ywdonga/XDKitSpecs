#
# Be sure to run `pod lib lint XDNet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XDNet'
  s.version          = '0.1.0'
  s.summary          = 'A short description of XDNet.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ywdonga/XDNet'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '329720990@qq.com' => 'dongyouweie@126.com' }
  s.source           = { :git => 'https://github.com/ywdonga/XDNet.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.5'
  
  s.source_files = 'XDNet/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XDNet' => ['XDNet/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.frameworks = 'Foundation'
  s.dependency 'RxSwift', '>= 6.0'
  s.dependency 'Moya', '>= 14.0.0'
  s.dependency 'ReachabilitySwift', '>= 5.0.0'
  s.dependency 'HandyJSON', '>= 5.0.2'
  s.dependency 'XDFoundation', '>= 0.1.1'

end
