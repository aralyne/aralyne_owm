# AralyneOwm

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/aralyne_owm`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aralyne_owm'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install aralyne_owm

## Usage

# get current weather by city id

AralyneOwm::Current.new(city_id, api_key).call

# get weather forecast by city id
AralyneOwm::Forecast.new(city_id, api_key).call

api_key: should be used as a parameter to pass the Open Waether MAp authentication key:

```ruby
api_key = 'your key'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/aralyne_owm. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/aralyne_owm/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the AralyneOwm project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/aralyne_owm/blob/master/CODE_OF_CONDUCT.md).
