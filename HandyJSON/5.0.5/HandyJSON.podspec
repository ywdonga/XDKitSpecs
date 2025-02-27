Pod::Spec.new do |s|

    s.author = { '329720990@qq.com' => 'dongyouweie@126.com' }
    s.license = 'Apache License 2.0'
    s.requires_arc = true
    s.version = '5.0.5'
    s.homepage = "https://github.com/ywdonga/HandyJSON"
    s.name = "HandyJSON"

    s.source_files = 'Source/**/*.{swift,h,m}'
    s.source = { :git => 'https://github.com/ywdonga/HandyJSON.git', :tag => s.version.to_s }

    s.summary = 'A Json Serialization & Deserialization Library for Swift'
    s.description = 'A Handy Json Library for Swift which serials object to json and deserials json to object'

    s.ios.deployment_target = '8.0'

    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
end
