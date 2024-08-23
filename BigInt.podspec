Pod::Spec.new do |spec|
  spec.name         = "BigInt"
  spec.version      = "1.19.1"
  spec.summary      = "Arbitrary-precision integer arithmetic in Swift"
  spec.author       = { "Leif Ibsen" => "https://github.com/leif-ibsen" }
  spec.homepage     = "https://github.com/leif-ibsen/BigInt"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.osx.deployment_target = "10.13"
  spec.ios.deployment_target = "11.0"
  spec.tvos.deployment_target = "11.0"
  spec.watchos.deployment_target = "5.0"
  spec.pod_target_xcconfig = { "EXCLUDED_ARCHS[sdk=watchos*]" => "armv7k arm64_32" }
  spec.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=watchos*]" => "armv7k arm64_32" }
  spec.swift_version = "5.0"
  spec.source        = { :git => "https://github.com/mIwr/BigInt.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/BigInt/*.swift", "Sources/BigInt/**/*.swift"
  spec.framework     = "Foundation"
  spec.resource_bundles = {'BigInt' => ['Sources/BigInt/PrivacyInfo.xcprivacy']}
end
