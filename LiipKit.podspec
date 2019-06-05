#
# Be sure to run `pod lib lint LiipKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LiipKit'
  s.version          = '0.4.0'
  s.summary          = 'LiipKit regroups usefull classes/extensions used in '\
                       'many applications.'
  s.description      = <<-DESC
LiipKit provides usefull extensions for
* Int
* Double
* NSDate
* String
* UIBarItem
* UIButton
* UIColor
* UILabel
* ...
                       DESC

  s.homepage         = 'https://github.com/liip/LiipKit'
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { 'Liip AG' => 'contact@liip.ch' }
  s.source           = { git: 'https://github.com/liip/LiipKit.git',
                         tag: s.version.to_s }
  s.social_media_url = 'https://twitter.com/liip'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LiipKit/Extensions/**/*'
end
