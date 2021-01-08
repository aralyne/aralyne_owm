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
