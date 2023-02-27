#
# Be sure to run `pod lib lint XDVideoCover.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XDVideoCover'
  s.version          = '0.1.1'
  s.summary          = 'A short description of XDVideoCover.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ywdonga/XDVideoCover'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '329720990@qq.com' => 'dongyouweie@126.com' }
  s.source           = { :git => 'https://github.com/ywdonga/XDVideoCover.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '5.5'
  s.ios.deployment_target = '11.0'

  s.source_files = 'XDVideoCover/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XDVideoCover' => ['XDVideoCover/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SnapKit', '~> 5.6'
  s.dependency 'XDPlayer', '~> 0.1.4'
end
