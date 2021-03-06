# OmniAuth Pandadoc &nbsp;[![Build Status](https://secure.travis-ci.org/CatchRelease/omniauth-pandadoc.svg?branch=master)](https://travis-ci.org/CatchRelease/omniauth-pandadoc) [![Gem Version](https://img.shields.io/gem/v/omniauth-pandadoc.svg)](https://rubygems.org/gems/omniauth-pandadoc)

Pandadoc Strategy for OmniAuth.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-pandadoc'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Pandadoc` is simply a Rack middleware. Read the OmniAuth docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :pandadoc, ENV['PANDADOC_CLIENT_ID'], ENV['PANDADOC_CLIENT_SECRET']
end
```

## Supported Rubies

- Ruby MRI (2.2+)

## License

Copyright (c) 2018 by Euan Lau, Mike Carey

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.