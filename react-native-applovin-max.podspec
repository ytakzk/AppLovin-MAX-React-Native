require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-applovin-max"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/AppLovin/AppLovin-MAX-React-Native.git", :tag => "release_5_2_3" }
  
  s.source_files  = "ios/AppLovinMAX*.{h,m}"

  s.dependency "React"
  s.dependency "AppLovinSDK", "11.9.0"

  s.dependency 'AppLovinMediationAmazonAdMarketplaceAdapter'
  s.dependency 'AmazonPublisherServicesSDK'
  s.dependency 'AppLovinMediationChartboostAdapter'
  s.dependency 'AppLovinMediationCriteoAdapter'
  s.dependency 'AppLovinMediationFyberAdapter'
  s.dependency 'AppLovinMediationIronSourceAdapter'
  s.dependency 'AppLovinMediationLineAdapter'
  s.dependency 'AppLovinMediationMaioAdapter'
  s.dependency 'AppLovinMediationMintegralAdapter'
  s.dependency 'AppLovinMediationByteDanceAdapter'
  s.dependency 'AppLovinMediationTapjoyAdapter'
  s.dependency 'AppLovinMediationUnityAdsAdapter'

end
