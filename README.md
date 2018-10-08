# WithPublic

This gem provides Module#with_public which make private methods public temporalily.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'with_public'
```

Or if you have an environment for test, instead:

```ruby
gem 'with_public', group: :test
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install with_public

## Usage

In a context you want some private instance methods with explicit receivers, write

    using TheClass.with_public(:private_method_1, :private_method_2, ...)

then you can call these methods wihtout Object#send.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sakuro/with_public.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
