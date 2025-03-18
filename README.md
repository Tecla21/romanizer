# Romanizer

Romanizer - Convert Integers to Roman Numerals and Vice-Versa

Romanizer is a lightweight and efficient Ruby gem that provides seamless conversion between integers and Roman numerals. Whether you need to convert numbers to their Roman representations or decode Roman numerals back into integers, Romanizer makes it simple and reliable.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add romanizer

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install romanizer

## Usage

require 'romanizer'

Romanizer.to_roman(2024) # => "MMXXIV"
Romanizer.to_integer("XLII") # => 42

Why Use Romanizer?
    Simple and efficient: No unnecessary dependencies, just pure Ruby.
    Well-tested: Ensures accuracy in conversions.
    Great for learning and projects: Use it in CLI tools, educational software, and more.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/romanizer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/romanizer/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Romanizer project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/romanizer/blob/main/CODE_OF_CONDUCT.md).
