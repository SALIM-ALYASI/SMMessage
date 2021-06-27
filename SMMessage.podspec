#
# Be sure to run `pod lib lint SMMessage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SMMessage'
  s.version          = '0.1.0'
  s.summary          = 'رسائل تاتي عند تحميل بيانات يمن نت'
  s.description      = <<-DESC
'رسائل تاتي عند تحميل بيانات يمن نت'
                     DESC
  s.homepage         = 'https://github.com/SALIM-ALYASI/SMMessage'
   s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SALIM-ALYASI' => 'r.m.alyasi@gmail.com'
  s.source           = { :git => 'https://github.com/SALIM-ALYASI/SMMessage.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'

  s.source_files = 'Message/**/*.swift'
  s.swift_version = '5.0'
  s.platforms = {
      "ios": "13.0"
  }
end
