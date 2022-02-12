Pod::Spec.new do |s|
s.name             = 'framework name'
s.version          = '1.0.0'
s.summary          = 'Detect if user is European and present GDPR modal if needed'
s.description      = <<-DESC
Detect if user is European and present GDPR modal if needed
GDPR text versioning
Plug your custom view controller in GDPRService setup to have control styling
DESC
s.homepage         = 'https://www.voodoo.io'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Sarra Srairi' => '' }
s.source           = { :git => 'git@github.com:"framework link"', :tag => s.version.to_s }
s.ios.deployment_target = '9.0'
s.swift_version = '5.0'
s.frameworks = 'AVFoundation', "Other Framework" '
s.static_framework = true
framework             = s.name
s.source_files        = [ "%s.framework/**/*.{h,m}" % [framework] ]
s.preserve_paths      = "%s.framework" % [framework]
s.public_header_files = "%s.framework/**/*.h" % [framework]
s.vendored_frameworks = '%s.framework' % [framework]
end
