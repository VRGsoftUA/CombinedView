#
# Be sure to run `pod lib lint CombinedView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

    #root
        s.name      = 'CombinedView'
        s.version   = '1.0.0'
        s.summary   = 'CombinedView descriptions'
        s.license   = { :type => 'MIT', :file => 'LICENSE.txt' }

        s.homepage  = 'https://github.com/VRGsoftUA/CombinedView'
        s.authors   = {'Anna Sahaidak'}
        s.source    = { :git => 'https://github.com/VRGsoftUA/CombinedView.git', :branch => 'master', :tag => '1.0.0' }

    #platform
        s.platform = :ios
        s.ios.deployment_target = '11.0'

    #build settings
        s.requires_arc = true

    #file patterns

        s.source_files = 'Classes/CombinedView/*.{h,m}'
end
