source 'https://rubygems.org'

# Specify your gem's dependencies in mongoid_ice_cube_extension.gemspec
gemspec

case version = ENV['MONGOID_VERSION'] || '~> 8.0'
when /8/ then gem 'mongoid', '~> 8.0'
when /7/ then gem 'mongoid', '~> 7.0'
when /6/ then gem 'mongoid', '~> 6.0'
when /5/ then gem 'mongoid', '~> 5.1'
when /4/ then gem 'mongoid', '~> 4'
else gem 'mongoid', version
end
