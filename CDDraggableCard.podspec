#
# Be sure to run `pod lib lint CDDraggableCard.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CDDraggableCard'
  s.version          = '0.1.0'
  s.summary          = '卡片样式滑动, 类似探探卡片滑动效果'
  s.description      = '卡片样式滑动, 类似探探卡片滑动效果, 类型iOS的TableView写法,设置代理 CDDraggableCardView 相对应Cell, CDDraggableContainer对应tableView'
  s.homepage         = 'https://github.com/HavenWWH'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = 'MIT'
  s.author           = { 'Haven' => '513433750@qq.com' }
  s.source           = { :git => "https://github.com/HavenWWH/CDDraggableCard.git", :tag => "#{s.version}"} 
  
  s.ios.deployment_target = '8.0'
  s.source_files = 'CDDraggableCard/*.{h,m}'
  
  #  s.resource_bundles = {
   #   'CDDraggableCard' => ['CDDraggableCard/Assets/*']
   # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
