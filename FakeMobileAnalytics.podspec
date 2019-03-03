#
# Be sure to run `pod lib lint FakeMobileAnalytics.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FakeMobileAnalytics'
  s.version          = '0.1.0'
  s.summary          = 'A short description of FakeMobileAnalytics.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/v7lin/FakeMobileAnalytics'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'v7lin' => 'v7lin@qq.com' }
  s.source           = { :git => 'https://github.com/v7lin/FakeMobileAnalytics.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'FakeMobileAnalytics/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FakeMobileAnalytics' => ['FakeMobileAnalytics/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.default_subspecs = 'Baidu'
  
  s.subspec 'Baidu' do |sp|
      sp.dependency 'BaiduMobStat', '~> 4.8.3'
  end
  
  s.subspec 'Talkingdata' do |sp|
      sp.dependency 'BaiduMobStat', '~> 4.8.3'
  end
  
end
