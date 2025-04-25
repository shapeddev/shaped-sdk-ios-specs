Pod::Spec.new do |s|
  s.name             = 'shaped_sdk'
  s.version          = '0.0.2'
  s.summary = 'Uma SDK para detecção de poses e segmentação usando ML Kit.'
  s.description = <<-DESC
    The Shaped SDK IOS Specs uses Google ML Kit to provide advanced pose detection features, 
    making integration into iOS projects easier.
  DESC
  s.homepage         = 'https://web.shaped.com.br'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Shaped' => 'api@shaped.com.br' }
  s.source = {
    :http => "https://api.github.com/repos/shapeddev/shaped-sdk-packages/releases/assets/249526327",
    :type => :zip,
    :headers => [
      "Authorization: token #{ENV['GITHUB_TOKEN']}",
      "Accept: application/octet-stream"
    ]
  }
  s.static_framework = true
  s.vendored_frameworks = 'ShapedSDK.xcframework'
  s.resources = ['ShapedSDK.xcframework/ios-arm64/ShapedSDK.framework/ShapedSDKAssets.bundle']
  s.dependency 'GoogleMLKit/PoseDetection', '7.0.0'
  s.dependency 'GoogleMLKit/PoseDetectionAccurate', '7.0.0'
  s.dependency 'GoogleMLKit/SegmentationSelfie', '7.0.0'
  s.platform = :ios, '15.5'

  s.swift_version = '5.0'
end