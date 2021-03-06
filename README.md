# TouchP
[![Gem Version](https://badge.fury.io/rb/touch_p.svg)](https://badge.fury.io/rb/touch_p)
![Build status](https://github.com/H0R15H0/touch_p/actions/workflows/test.yml/badge.svg)

Touch_p is a cli tool to make file even if directory doesn't exist, like 'mkdir -p'.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'touch_p'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install touch_p

## Usage

It's very easy to use.
If you want to create a file, just run the following.

    $ touch_p hoge/hoge

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/H0R15H0/touch_p.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
