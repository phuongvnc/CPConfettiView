
Pod::Spec.new do |s|
  s.name         = "CPConfettiView"
  s.version      = "1.0"
  s.summary      = "CPConfettiView is fun animation when user input keyword "
  s.homepage     = "https://github.com/phuongvnc/CPConfettiView"
  s.screenshots  = "https://github.com/at-phuongvnc/CPConfettiView/blob/master/README/animated.gif"
  s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "Chi Phuong" => "vonguyenchiphuong@gmail.com" }
  s.platform   = :ios
  s.platform   = :ios, "8.0"
  s.source       = { :git => "https://github.com/phuongvnc/CPConfettiView.git", :tag => "#{s.version}" }
  s.source_files  = "CPConfettiView/*",
  s.requires_arc = true
  s.frameworks = 'UIKit'
end