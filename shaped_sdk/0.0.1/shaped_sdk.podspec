Pod::Spec.new do |s|
  s.name             = 'shaped_sdk'
  s.version          = ENV['SDK_VERSION'] || '0.0.1'
  s.summary = 'Uma SDK para detecção de poses e segmentação usando ML Kit.'
  s.description = <<-DESC
    The Shaped SDK IOS Specs uses Google ML Kit to provide advanced pose detection features, 
    making integration into iOS projects easier.
  DESC
  s.homepage         = 'https://web.shaped.com.br'
  s.license          = { :type => 'MIT', :file => 'sdk/ios/LICENSE' }
  s.author           = { 'Shaped' => 'shaped.com.br' }
  s.source = { :git => 'https://github.com/shapeddev/shaped_sdk.git', :tag => s.version.to_s }
  s.source_files     = 'sdk/ios/Classes/**/*'
  s.resource_bundles = {'ShapedSDKAssets' => ['sdk/ios/ShapedSDK/*.bundle']}
  s.static_framework = true
  s.dependency 'GoogleMLKit/PoseDetection', '6.0.0'
  s.dependency 'GoogleMLKit/PoseDetectionAccurate', '6.0.0'
  s.dependency 'GoogleMLKit/SegmentationSelfie', '6.0.0'
  s.platform = :ios, '13.0'

  s.swift_version = '5.0'
end
