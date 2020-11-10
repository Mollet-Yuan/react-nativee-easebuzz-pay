require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "EasebuzzPay"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  EasebuzzPay
                   DESC
  s.homepage     = "https://github.com/Mollet-Yuan/react-nativee-easebuzz-pay.git"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "mollet" => "mollet_yuan@163.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/Mollet-Yuan/react-nativee-easebuzz-pay.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"
end

