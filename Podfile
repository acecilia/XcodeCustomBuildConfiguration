platform :ios, '13.0'

install! 'cocoapods',
    :generate_multiple_pod_projects => true

use_frameworks!

project 'CustomConfigurationSample.xcodeproj', 
    'CustomDebugWithPodSetup' => :debug, 
    'CustomReleaseWithPodSetup' => :release

target 'CustomConfigurationSampleApp' do
    pod 'PodDependency', :path => 'PodDependency'
end