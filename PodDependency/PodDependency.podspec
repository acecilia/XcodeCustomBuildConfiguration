Pod::Spec.new do |spec|
    spec.name = 'PodDependency'
    spec.version = '1.0.0'
    spec.summary = 'PodDependency'
    spec.description = 'PodDependency'
    spec.homepage = 'https://www.google.com'
    spec.source = { :git =>'https://www.google.com' }
    spec.license = { :type => 'Proprietary' }
    spec.author = { 'acecilia' => 'acecilia' }
    spec.swift_version = '5.0'
    spec.static_framework = true
    spec.ios.deployment_target = '13.0'
    spec.source_files = [
        'PodDependency/**/*.swift',
    ]
end