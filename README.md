# crystal-darksky

Dark Sky API wrapper in Crystal.

Documentation: https://darksky.net/dev/docs

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  darksky:
    github: sb89/crystal-darksky
```

## Usage

```crystal
require "darksky"

client = Darksky.new("api key here....")

forecast = client.get_forecast("38.385939", "-97.43004")

forecast.currently.try do |c|
  p "The temperature is #{c.temperature}!"
end

```

## Contributing

1. Fork it ( https://github.com/sb89/crystal-darksky/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [sb89](https://github.com/sb89) Steven - creator, maintainer
