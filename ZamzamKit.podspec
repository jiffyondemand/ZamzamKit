Pod::Spec.new do |s|
    s.name             = 'ZamzamKit'
    s.version          = '4.0.1'
    s.summary          = 'A Swift framework for rapidly developing Apple apps.'
    s.description      = <<-DESC
ZamzamKit is a Swift framework for Apple devices to allow
developers to code rapidly for building mobile applications.
Focus on solutions by using our API that sits as an
abstraction layer on top of Apple SDK's and Swift.
ZamzamKit provides you the latest patterns, techniques,
and libraries so you can begin building for the future.
                        DESC
    s.homepage         = 'https://github.com/ZamzamInc/ZamzamKit'
    # s.screenshots    = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Zamzam Inc.' => 'contact@zamzam.io' }
    s.source           = { :git => 'https://github.com/ZamzamInc/ZamzamKit.git', :tag => s.version }
    s.social_media_url = 'https://twitter.com/zamzaminc'
    
    s.ios.deployment_target     = '10.0'
    s.watchos.deployment_target = '3.0'
    s.tvos.deployment_target    = '10.0'

    s.swift_version = '5.0'
    s.requires_arc = true
    
    s.source_files = 'Sources/**/*.{h,swift}'

    s.ios.exclude_files = [
        'Sources/**/watchOS/*.*',
        'Sources/**/watchOS/**/*.*',
        'Sources/**/tvOS/*.*',
        'Sources/**/tvOS/**/*.*'
    ]
    s.watchos.exclude_files = [
        'Sources/**/iOS/*.*',
        'Sources/**/iOS/**/*.*',
        'Sources/**/tvOS/*.*',
        'Sources/**/tvOS/**/*.*'
    ]
    s.tvos.exclude_files = [
        'Sources/**/iOS/*.*',
        'Sources/**/watchOS/**/*.*',
        'Sources/**/iOS/*.*',
        'Sources/**/watchOS/**/*.*',
        'Sources/Enums/LocationAuthorizationType.swift',
        'Sources/Extensions/UNNotificationAttachment.swift',
        'Sources/Extensions/UNUserNotificationCenter.swift',
        'Sources/Extensions/CLLocationManager.swift',
        'Sources/Workers/LocationsWorker.swift',
        'Sources/Workers/LocationsWorkerType.swift',
        'Sources/Models/WatchSession.swift'
    ]
    
    s.resource_bundles = {
        'ZamzamKit' => [
            'Sources/*.xcassets'
        ]
    }

    s.ios.framework     = 'AVFoundation', 'SystemConfiguration'
    s.watchos.framework = 'ClockKit'
end
