Pod::Spec.new do |s|

  s.name         = "CJFileManager"
  s.version      = "1"
  s.summary      = "CJFileManager."
  s.description  = <<-DESC
                    this is CJFileManager
                   DESC

  s.homepage     = "https://github.com/JuneCheng/CJFileManager"
  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "JuneCheng" => "755038283@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/JuneCheng/CJFileManager.git", :tag => s.version.to_s }
  s.source_files = "CJFileManager/*.{h,m}"
  s.platform     = :ios, "5.0"
  s.framework    = "Foundation", "ImageIO", "UIKit"
  s.requires_arc = true

end
