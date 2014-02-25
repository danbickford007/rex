# Rex

Test your regex quickly with an interactive console.  Add as many test strings as you desire and run your
regex against them.

## Installation

Add this line to your application's Gemfile:

    gem 'rex'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rex

## Usage
    $ regex
      $ set or add myRegex           -sets your current regex
    $ view                         -view current regex
    **only add regex between but not including the starting and ending //

    $ strings
    $ add myString                 -add test string to your list of strings
    $ remove myString              -remove test string from list of strings
    $ view or show or list         -view your strings
    $ clear_all                    -remove all your test strings

    $ check now                    -run your regex against all test strings
    
    
## EXAMPLES

set regex:         

    $ regex set \d

add test string:   

    $ strings add testString

run your regex:    

    $ check now

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
