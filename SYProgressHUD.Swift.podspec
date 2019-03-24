Pod::Spec.new do |s|
s.name         = "SYProgressHUD.Swift"
s.version      = "1.0.0"
s.summary      = "A Swift HUD base MBProgressHUD"
s.description  = <<-DESC
A Swift HUD base MBProgressHUD
DESC
s.homepage     = "https://github.com/sauchye/SYProgressHUD.Swift"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "sauchye" => "sauchyer@gmail.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/sauchye/SYProgressHUD.Swift.git", :tag => s.version }
s.source_files  = "Classes", "SYProgressHUD.Swift/SYProgressHUD.Swift/Classes/**/*.{h,m}"
s.requires_arc = true
end
