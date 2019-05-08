Pod::Spec.new do |s|

        s.name      = 'CombinedView'
        s.version   = '1.0.0'
        s.summary   = 'Library for iOS application to combine different images in one UIView.'
        s.license   = { :type => 'MIT', :file => 'LICENSE.txt' }

        s.homepage  = 'https://github.com/VRGsoftUA/CombinedView'
        s.authors   = {'Anna Sahaidak' => 'annasagaydack@gmail.com'}
        s.source    = { :git => 'https://github.com/VRGsoftUA/CombinedView.git', :branch => 'master', :tag => '1.0.0' }


        s.platform = :ios
        s.ios.deployment_target = '11.0'
	s.swift_version = '5.0'

        s.requires_arc = true

        s.source_files = 'CombinedView/*.swift'
end
