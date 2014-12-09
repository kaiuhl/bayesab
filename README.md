# Bayesab

Bayesab is a command-line tool for helping out with analyzing a/b tests. I wrote
it because we've been a/b testing a lot at Treehouse lately, and it's easier to
share code than tell people how to calculate things.

The algorithm used here is a Ruby translation of the Julia code shared in Evan
Miller's really good [A Formula for Bayesian A/B Testing](http://www.evanmiller.org/bayesian-ab-testing.html).

## Installation

You'll most likely want to just install this and use the command line too. To do
so, simply do:

```
gem install bayesab
```

The method for finding the probability that an experiment is an improvement
can be used outside of command line as well.

Add this line to your application's Gemfile:

```ruby
gem 'bayesab'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bayesab

## Usage

### Command Line

```
bayesab control_success control_fail experiment_success experiment_fail
```

The success and fail values are the number of successes and failures in your
control and experiment.

### Code

Just call the probability method with the control and experiment success and fail
counts.

```ruby
Bayesab::probability(control_success, control_fail, experiment_success, experiment_fail)
```

The probability method returns a float value representing the probability that
experiment is better than control.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/bayesab/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
