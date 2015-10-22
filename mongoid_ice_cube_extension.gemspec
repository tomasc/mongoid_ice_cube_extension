# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid_ice_cube_extension/version'

Gem::Specification.new do |spec|
  spec.name          = "mongoid_ice_cube_extension"
  spec.version       = MongoidIceCubeExtension::VERSION
  spec.authors       = ["Tomas Celizna"]
  spec.email         = ["tomas.celizna@gmail.com"]

  spec.summary       = %q{Mongoid field extension that serializes/deserializes IceCube schedule.}
  spec.homepage      = "https://github.com/tomasc/mongoid_ice_cube_extension"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "mongoid", ">= 4.0", "< 6.0"
  spec.add_dependency "ice_cube"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
end
