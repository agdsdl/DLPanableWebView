Pod::Spec.new do |s|

  s.name         = "DLPanableWebView"
  s.version      = "0.9.0"
  s.summary      = "Extend UIWebView to support pan left to go back gesture.(like Wechat in-app browser)"

  s.description  = <<-DESC
In Safari, besides tap on 'back' and 'forward' button,  you can pan left & right to go back and forward.
But UIWebView does not support this gesture. So I extented UIWebView to support the gesture(now only go back gesture).
                   DESC

  s.homepage     = "https://github.com/agdsdl/DLPanableWebView"
  s.screenshots  = "https://github.com/agdsdl/DLPanableWebView/raw/master/images/demo.gif"


  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { "Dongle Su" => "agdsdl@sina.com.cn" }
  s.social_media_url   = "http://weibo.com/u/1421886475"

  s.platform     = :ios, "6.0"
  s.ios.deployment_target = "6.0"

  s.source       = { :git => "https://github.com/agdsdl/DLPanableWebView.git", :tag => s.version.to_s }
  s.source_files  = "DLPanableWebView/*.{m,h}"

  s.requires_arc = true

end
