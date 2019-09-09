#
# Be sure to run `pod lib lint IconTextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IconTextField2'
  s.version          = '0.1.2'
  s.summary          = 'A TextField that displays an icon.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A UITextField subclass that provides built in support for displaying an icon on the left side, with optional parameters.'

  s.homepage         = 'https://github.com/josharnoldjosh/IconTextField'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'josharnoldjosh' => 'josharnold997@gmail.com' }
  s.source           = { :git => 'https://github.com/josharnoldjosh/IconTextField.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'IconTextField/Classes/**/*'
  
  # s.resource_bundles = {
  #   'IconTextField' => ['IconTextField/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SnapKit', '~> 5.0.0'
  s.swift_versions = '5.0'
end
