Pod::Spec.new do |s|
  s.name = 'RxSejima'
  s.version = '0.1.2'
  s.license = 'MIT'
  s.summary = 'RxSejima is a framework that expose reusable components.'
  s.description  = <<-DESC
    As we always use the same or a really close object, we made severals components that we want to share with you.
                   DESC
  s.homepage = 'https://github.com/MoveUpwards/RxSejima.git'
  s.authors = { 'Damien NOËL DUBUISSON' => 'damien@slide-r.com', 'Loïc GRIFFIÉ' => 'loic@slide-r.com' }
  s.source = { :git => 'https://github.com/MoveUpwards/RxSejima.git', :tag => s.version }
  s.swift_version   = '4.2'

  s.ios.deployment_target = '9.1'

  s.source_files = 'RxSejima/Source/**/*.swift'

  s.frameworks = 'Foundation'

  s.dependency 'RxCocoa', '~> 4.3.1'
  s.dependency 'RxSwift', '~> 4.3.1'
  s.dependency 'Sejima'
end