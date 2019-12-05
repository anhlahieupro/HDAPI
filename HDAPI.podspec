#
# Be sure to run `pod lib lint HDAPI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HDAPI'
  s.version          = '10.0'
  s.summary          = 'HDAPI - anhlahieupro'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/anhlahieupro/HDAPI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anhlahieupro' => 'anhlahieupro@gmail.com' }
  s.source           = { :git => 'https://github.com/anhlahieupro/HDAPI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'HDAPI/HDAPI/Files/**/*'
  
  s.resource_bundles = {
      'HDAPI' => ['HDAPI/HDAPI/Files/**/*.{storyboard,xib}']
  }

  s.frameworks = 'UIKit', 'Foundation', 'Alamofire', 'ObjectMapper'
  s.dependency 'Alamofire'
  s.dependency 'ObjectMapper'

  s.static_framework = true

end
