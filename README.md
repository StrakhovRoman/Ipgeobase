# Ipgeobase

Return IP metadata. 
***
[![Maintainability](https://api.codeclimate.com/v1/badges/b90df6fed50187ed898d/maintainability)](https://codeclimate.com/github/StrakhovRoman/Ipgeobase/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/b90df6fed50187ed898d/test_coverage)](https://codeclimate.com/github/StrakhovRoman/Ipgeobase/test_coverage)
[![CI](https://github.com/StrakhovRoman/Ipgeobase/actions/workflows/main.yml/badge.svg)](https://github.com/StrakhovRoman/Ipgeobase/actions/workflows/main.yml)
***
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ipgeobase'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ipgeobase

## Usage

```Ruby
ip_meta = Ipgeobase.lookup('8.8.8.8')
ip_meta.city # Ashburn
ip_meta.country # United States
ip_meta.countryCode # US
ip.lat # 39.03
ip.lon # -77.5
```

