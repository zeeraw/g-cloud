# GCloud ruby gem
Useful tools for working with G-Cloud and the [CloudStore](http://govstore.service.gov.uk/cloudstore/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'g-cloud'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install g-cloud
```

## Usage

#### Lot numbers and names

```ruby
GCloud::Lot.by_name "saas"
# => 3
```

```ruby
GCloud::Lot.by_number 2
# => "PaaS"
```