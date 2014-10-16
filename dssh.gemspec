Gem::Specification.new do |s|
  s.name        = 'dssh'
  s.version     = '0.0.5'
  s.date        = '2014-08-07'
  s.summary     = "Docker ssh"
  s.description = "Uses nsenter to provide a terminal to a Docker container. Looks and feels like an ssh client."
  s.authors     = ["Stephen Johnson"]
  s.email       = 'stevej@ucla.edu'
  s.files       = ["lib/dssh.rb", "share/dssh"]
  s.executables = ['dssh']
  s.homepage    = 'http://rubygems.org/gems/dssh'
  s.license     = 'MIT'
end
