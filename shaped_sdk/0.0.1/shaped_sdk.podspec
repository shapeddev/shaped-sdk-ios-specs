#
# To learn more about a podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod repo push shaped-specs shaped_sdk.podspec --allow-warnings`
#
Pod::Spec.new do |s|
  s.name             = 'shaped_sdk'
  #TODO Validar para passar a versão por env.
  s.version          = ENV['SDK_VERSION'] || '0.0.1'
  s.summary = 'Uma SDK para detecção de poses e segmentação usando ML Kit.'
  s.description = <<-DESC
    A Shaped SDK utiliza o Google ML Kit para fornecer recursos avançados de 
    detecção de poses e segmentação de selfies, facilitando a integração em projetos iOS.
  DESC
  s.homepage         = 'https://web.shaped.com.br'
  s.license          = { :type => 'MIT', :file => 'sdk/ios/LICENSE' }
  s.author           = { 'Shaped' => 'support@shaped.com.br' }
  s.source = { :git => 'https://github.com/shapeddev/shaped_sdk.git', :tag => s.version.to_s }
  s.source_files     = 'sdk/ios/Classes/**/*'
  s.resource_bundles = {'ShapedSDKAssets' => ['sdk/ios/*.bundle']}
  s.static_framework = true
  s.dependency 'GoogleMLKit/PoseDetection', '6.0.0'
  s.dependency 'GoogleMLKit/PoseDetectionAccurate', '6.0.0'
  s.dependency 'GoogleMLKit/SegmentationSelfie', '6.0.0'
  s.platform = :ios, '13.0'

  s.swift_version = '5.0'
end
