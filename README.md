# Deprecated
Use a more complete and well supported math system like [Octave](https://www.gnu.org/software/octave/), which is compatible with [MATLAB](https://www.mathworks.com/products/matlab.html).

# Magician
[![Gem Version](https://badge.fury.io/rb/magician.png)](http://badge.fury.io/rb/magician)
[![Build Status](https://secure.travis-ci.org/nicolasmccurdy/magician.png?branch=master)](http://travis-ci.org/nicolasmccurdy/magician)
[![Dependency Status](https://gemnasium.com/nicolasmccurdy/magician.png)](https://gemnasium.com/nicolasmccurdy/magician)
[![Code Climate](https://codeclimate.com/github/thenickperson/magician.png)](https://codeclimate.com/github/thenickperson/magician)

A suite of handy methods for doing calculations in irb.

## Installation
Add this line to your application's Gemfile:

    gem 'magician'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install magician

## [Documentation](http://rubydoc.info/github/nicolasmccurdy/magician/frames)

## Examples
```ruby
>> require 'magician'
=> true
>> [1,2,3].sum
=> 6
>> [1,2,3].mean
=> 2.0
>> [1,100,5].range
=> 99
>> [1,2,2,3,3,3].occurences
=> {1=>1, 2=>2, 3=>3}
>> 6.factors
=> [1, 2, 3, 6]
>> 6.divisible? 3
=> true
>> 7.prime?
=> true
>> 5.factorial
=> 120
>> Math.combinations(10,5)
=> 252
>> Math.triplet?(3,4,5)
=> true
>> Math.quadratic(2,1,0)
=> [-0.5, 0.0]
>> 'racecar'.palindrome?
=> true
```

## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
