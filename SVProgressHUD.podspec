Pod::Spec.new do |s|
  s.name     = 'SVProgressHUD'
  s.version  = '2.1.2'
  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.0'
  s.license  =  { :type => 'MIT', :file => 'LICENSE.txt' }
  s.summary  = 'A clean and lightweight progress HUD for your iOS and tvOS app.'
  s.homepage = 'https://github.com/SVProgressHUD/SVProgressHUD'
  s.authors   = { 'Sam Vermette' => 'hello@samvermette.com', 'Tobias Tiemerding' => 'tobias@tiemerding.com' }
  s.source   = { :git => 'https://github.com/HerenMA/SVProgressHUD.git', :tag => s.version.to_s }

  s.description = 'SVProgressHUD is a clean and easy-to-use HUD meant to display the progress of an ongoing task on iOS and tvOS. The success and error icons are from Freepik from Flaticon and are licensed under Creative Commons BY 3.0.'

  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.tvos.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'SVProgressHUD/*.{h,m}'
    ss.resources    = 'SVProgressHUD/SVProgressHUD.bundle'
  end
  
  #s.subspec 'Framework' do |ss|
  #  ss.ios.vendored_framework   = 'ios/SVProgressHUD.framework'
  #  ss.resources    = 'SVProgressHUD/SVProgressHUD.bundle'
  #end
  
  s.framework    = 'QuartzCore'
  
end