Gem::Specification.new do |s|

  s.name          = 'docker-dssh'
  s.version       = '0.0.8'
  s.date          = '2014-10-16'
  s.summary       = 'Docker ssh'
  s.description   = 'Uses nsenter to provide a terminal to a Docker container. Looks and feels like an ssh client. Was previously just named "dssh".'
  s.authors       = ['Stephen Johnson']
  s.email         = 'stevej@ucla.edu'
  s.homepage      = 'https://github.com/smj10j/docker-dssh'
  s.license       = 'MIT'
  
  s.executables   = ['dssh']
  s.require_paths = ['lib']
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.files         = ['lib/dssh.rb', 'share/dssh']
  
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  
end
