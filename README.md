# Datescope

Adding date scopes to ActiveRecord models to create statistics easily.

## Installation

Add this line to your application's Gemfile:

    gem 'datescope'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install datescope

## Usage

    class User < ActiveRecord::Base

      def self.registered
        self
      end

    end

    User.registered.today
    User.registered.this_week
    User.registered.this_month
    User.registered.last_month
    User.registered.month_before_last_month
    User.registered.this_year


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
