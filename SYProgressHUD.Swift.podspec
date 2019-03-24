Pod::Spec.new do |s|
s.name         = "SYProgressHUD.Swift"
s.version      = "1.0.0"
s.summary      = "A Swift HUD base MBProgressHUD"
s.description  = "SYProgressHUD.Swift a Swift HUD base MBProgressHUD"
s.homepage     = "https://github.com/sauchye/SYProgressHUD.Swift"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "sauchye" => "sauchyer@gmail.com" }
s.platform     = :ios, "8.0"
s.swift_version = '4.2'
s.source       = { :git => "https://github.com/sauchye/SYProgressHUD.Swift.git", :tag => s.version }
s.source_files  = 'SYProgressHUD.Swift/SYProgressHUD/**/*.{swift,h,m}'

end
