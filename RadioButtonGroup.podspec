#
# Be sure to run `pod lib lint RadioButtonGroup.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = "RadioButtonGroup"
s.version          = "1.0.0"
s.summary          = "Radio Button Group library"
s.homepage         = "https://github.com/barbaracsilveira/RadioButtonGroup"
s.license          = 'MIT'
s.author           = { "Bárbara Silveira" => "barbara.silveira93@gmail.com" }
s.source           = { :git => "https://github.com/barbaracsilveira/RadioButtonGroup.git", :tag => s.version.to_s }

s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'Pod/Classes/**/*.swift'

end
