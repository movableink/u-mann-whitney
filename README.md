# UMannWhitney

This gem is extracted from [statsample](https://github.com/sciruby/statsample) to reduce the number of dependencies.

The U Mann-Whitney test is a non-parametric test for assessing whether two independent samples of observations come from the same distribution.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'u-mann-whitney'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install u-mann-whitney

## Usage

```
leader_values = Daru::Vector.new([1,2,3,4,5,6])
challenger_values = Daru::Vector.new([7,8,9,10,11,12])
mann_whitney_test = UMannWhitney.new(leader_values, challenger_values)

mann_whitney_test.probability_z
=> 0.0039477518569035475
mann_whitney_test.probability_exact
=> (1/462)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/movableink/u-mann-whitney.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
