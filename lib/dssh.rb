
name = 'dssh'
args = "'#{ARGV.join("','")}'"
gempath = Gem::Specification.find_by_name( name )
exepath = File.join( gempath.full_gem_path, 'share/dssh' )
exec( "/bin/bash #{exepath} #{args} 2>&1" )
