# Mongoid Ice Cube Extension

[![Build Status](https://travis-ci.org/tomasc/mongoid_ice_cube_extension.svg)](https://travis-ci.org/tomasc/mongoid_ice_cube_extension) [![Gem Version](https://badge.fury.io/rb/mongoid_ice_cube_extension.svg)](http://badge.fury.io/rb/mongoid_ice_cube_extension) [![Coverage Status](https://img.shields.io/coveralls/tomasc/mongoid_ice_cube_extension.svg)](https://coveralls.io/r/tomasc/mongoid_ice_cube_extension)

A [Mongoid](https://github.com/mongoid/mongoid) field extension that serializes/deserializes [IceCube](https://github.com/seejohnrun/ice_cube/) schedule.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mongoid_ice_cube_extension'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid_ice_cube_extension

## Usage

Add to Mongoid models as:

```ruby
field :schedule, type: MongoidIceCubeExtension::Schedule
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/tomasc/mongoid_ice_cube_extension/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
