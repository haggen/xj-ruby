# XJ

> Read XLS into JSON.

## Installation

Add this line to your application's Gemfile:

    gem 'xj'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xj

## Usage

Goes like this:

    spreadsheet = XJ::Spreadsheet.new('./sample.xls')
    spreadsheet.to_json 
    spreadsheet.to_hash

Or use the shortcut:

    XJ.read('./sample.xls').to_json

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
