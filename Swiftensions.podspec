Pod::Spec.new do |spec|

  spec.name         = "Swiftensions"
  spec.version      = "1.0.0"
  spec.summary      = "Swiftensions is a little handy library of Swift Extensions."

  spec.description  = <<-DESC
  Swiftensions is a little handy library of Swift Extensions.
                   DESC

  spec.homepage     = "https://github.com/dacchan/Swiftensions"
  spec.license      = "MIT"
  spec.author             = { "dacchan" => "0x0187d350@gmail.com" }


  spec.platform     = :ios
  spec.ios.deployment_target = "8.0"

  spec.source       = { :git => "https://github.com/dacchan/Swiftensions.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/**/*.swift"

  spec.requires_arc = true
  spec.swift_version = "5.0"

end
