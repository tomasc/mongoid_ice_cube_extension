require 'bundler/setup'
require 'minitest'
require 'minitest/autorun'
require 'minitest/spec'

require 'mongoid'
require 'mongoid_ice_cube_extension'

if ENV["CI"]
  require "coveralls"
  Coveralls.wear!
end
