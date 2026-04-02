Pod::Spec.new do |spec|
  spec.name                      = "SwBigInt"
  spec.version                   = "1.23.1"
  spec.summary                   = "Arbitrary-precision integer arithmetic in Swift"
  spec.author                    = { "Leif Ibsen" => "https://github.com/leif-ibsen" }
  spec.homepage                  = "https://github.com/leif-ibsen/BigInt"
  spec.license                   = { :type => "MIT", :file => "LICENSE" }
  spec.osx.deployment_target     = "10.12"
  spec.ios.deployment_target     = "9.0"
  spec.tvos.deployment_target    = "9.0"
  spec.watchos.deployment_target = "2.0"
  spec.swift_versions            = ["5.3", "5.9", "5.10"]
  spec.swift_version             = "5.3"
  spec.source                    = { :git => "https://github.com/mIwr/BigInt.git", :tag => "#{spec.version}" }
  spec.exclude_files             = "Sources/BigInt/BigInt.docc/*.*", "Sources/BigInt/BigInt.docc/**/*.*"
  spec.source_files              = "Sources/BigInt/*.swift", "Sources/BigInt/**/*.swift"
  spec.framework                 = "Foundation"
  spec.resource_bundles          = {'SwBigInt' => ['Sources/BigInt/PrivacyInfo.xcprivacy']}
end
