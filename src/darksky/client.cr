require "./options/*"
require "./data/*"

module Darksky
  class Client
    BASE_URL = "https://api.darksky.net/forecast"

    def initialize(@key : String, @lang : Language, @units : Units, @extend_hourly : Bool, @exclude : Array(Blocks)?)
    end

    def get_forecast(latitude, longitude, lang = @lang, units = @units, extend_hourly = @extend_hourly, exclude = @exclude)
      url = "#{BASE_URL}/#{@key}/#{latitude},#{longitude}"

      params = HTTP::Params.build do |p|
        p.add "lang", lang.text
        p.add "units", units.text
        p.add "extend", "hourly" if extend_hourly
        p.add "exclude", exclude.join(",") { |i| i.text } if exclude && exclude.size > 0
      end

      response = HTTP::Client.get("#{url}?#{params}")

      case response.status_code
      when 200
        Forecast.from_json(response.body)
      when 404
        raise Exception.new("Received 404 status. Perhaps your API key is incorrect?")
      else
        raise Exception.new("Received #{response.status_code} status.")
      end
    end
  end
end