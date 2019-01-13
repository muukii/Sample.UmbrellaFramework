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

post_install do |installer|

  merged_framework_target = "Pods-Umbrella"
  wrap_target = installer.analysis_result.targets.find { |item| item.name == merged_framework_target }
  if wrap_target.nil?
    raise "Could not find target for Merged Framework from #{installer.analysis_result.targets}"
  end

  target_names_should_be_static = wrap_target.pod_targets.map { |i| i.name }

  puts "==="
  wrap_target.pod_targets.each { |target|
    puts "@_exported import #{target.product_module_name}"
  }
  puts "==="

  installer.analysis_result.targets
    .select { |item| item.name != merged_framework_target }
    .each { |target|
      puts "Validate : #{target}"
      result = target.pod_targets.find { |item| target_names_should_be_static.include? item.name  }
      unless result.nil?
        raise "#{target} includes this pod (#{result})"
      end
    }

  installer.pods_project.targets.each do |target|

    target.build_configurations.each do |config|
      if target_names_should_be_static.include? target.name
        config.build_settings['MACH_O_TYPE'] = "staticlib"
      end

    end
  end
end

