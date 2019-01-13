# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

workspace "MyApp"

abstract_target 'App' do

  project 'MyApp'

  use_frameworks!

  target 'MyApp' do
    pod 'Firebase/Core'
  end

  target 'AppService' do
  end

  target 'AppUtility' do
  end

  target 'AppRequest' do
  end

end

target 'Umbrella' do

  project 'Umbrella/Umbrella'

  use_frameworks!

  pod 'Alamofire'
  pod 'RxSwift'
  pod 'RxCocoa'

end
