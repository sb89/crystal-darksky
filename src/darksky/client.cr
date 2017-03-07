require "./options/*"
require "./data/*"

module Darksky
  class Client
    BASE_URL = "https://api.darksky.net/forecast"

    def initialize(key : String, @lang = Language::EN, @units = Units::CA, @extend_hourly = false, @exclude = Array(Blocks).new)
      @key = key
    end

    def get_forecast(latitude, longitude, lang = @lang, units = @units, extend_hourly = @extend_hourly, exclude = @exclude)
      url = "#{BASE_URL}/#{@key}/#{latitude},#{longitude}"
      url += "?lang=" + lang.text
      url += "&units=" + units.text
      url += "&extend=hourly" if extend_hourly
      url += "&exclude=" + exclude.join(",") { |i| i.text } if exclude.size > 0

      response = HTTP::Client.get(url)

      case response.status_code
      when 200
        Darksky::Forecast.from_json(response.body)
      when 404
        raise Exception.new("Received 404 status. Perhaps your API key is incorrect?")
      else
        raise Exception.new("Received #{response.status_code} status.")
      end
    end
  end
end