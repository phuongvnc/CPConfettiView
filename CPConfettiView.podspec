
Pod::Spec.new do |s|
  s.name         = "CPConfettiView"
  s.version      = "1.0"
  s.summary      = "CPConfettiView is fun animation when user input keyword "
  s.homepage     = "https://github.com/phuongvnc/CPConfettiView"
  #s.screenshots  = "https://github.com/phuongvnc/CPConfettiView/blob/master/README/animated.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Chi Phuong" => "vonguyenchiphuong@gmail.com" }
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/phuongvnc/CPConfettiView.git", :tag => s.version.to_s }
  s.source_files  = 'CPConfettiView/*'
  s.requires_arc = true
  s.frameworks = 'UIKit'
end