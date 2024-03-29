#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_yandex_ads.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_yandex_ads'
  s.version          = '1.0.0'
  s.summary          = 'Flutter Yandex Ads.'
  s.description      = <<-DESC
Flutter Yandex Ads.
                       DESC
  s.homepage         = 'http://kovardin.ru'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'kovardin.ru' => 'artem-kovardin@yandex.ru' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'YandexMobileAds', '6.4.0'
  s.dependency 'YandexMobileAdsInstream', '0.24.0'
  s.dependency 'YandexMobileAdsMediation'
  s.dependency 'YandexMobileAdsAdMobAdapters'
  s.dependency 'YandexMobileAdsIronSourceAdapters'
  s.platform = :ios, '10.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.3.1'
end
