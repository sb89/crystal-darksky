require "./spec_helper"

describe Darksky::Client do
  describe "get_forecast" do
    context "when 404 status is returned" do
      it "an exception should be raised" do
        expect_raises(Exception, "Received 404 status. Perhaps your API key is incorrect?") do
          WebMock.wrap do
            WebMock.stub(:any, "https://api.darksky.net/forecast/apikey/37,-122?lang=en&units=auto").
              to_return(status: 404)

            Darksky.new("apikey").get_forecast("37", "-122")
          end
        end
      end
    end

    context "when any status other than 200 or 404 is returned" do
      it "an exception should be raised" do
        expect_raises(Exception, "Received 400 status.") do
          WebMock.wrap do
            WebMock.stub(:any, "https://api.darksky.net/forecast/apikey/37,-122?lang=en&units=auto").
              to_return(status: 400)

            Darksky.new("apikey").get_forecast("37", "-122")
          end
        end
      end
    end

    it "should use use correct language" do
      lang = Darksky::Language::NL

      WebMock.wrap do
        WebMock.stub(:any, "https://api.darksky.net/forecast/apikey/37,-122?").
          with(query: {"lang" => lang.text, "units" => "auto"}).
          to_return(body: %({"latitude": 0, "longitude":0, "timezone":""}))

        Darksky.new("apikey").get_forecast("37", "-122", lang: lang)
      end
    end

    it "should use use correct units" do
      units = Darksky::Units::UK2

      WebMock.wrap do
        WebMock.stub(:any, "https://api.darksky.net/forecast/apikey/37,-122?").
          with(query: {"lang" => "en", "units" => units.text}).
          to_return(body: %({"latitude": 0, "longitude":0, "timezone":""}))

        Darksky.new("apikey").get_forecast("37", "-122", units: units)
      end
    end

    it "should use use extend hourly when specified" do
      WebMock.wrap do
        WebMock.stub(:any, "https://api.darksky.net/forecast/apikey/37,-122?").
          with(query: {"lang" => "en", "units" => "auto", "extend" => "hourly"}).
          to_return(body: %({"latitude": 0, "longitude":0, "timezone":""}))

        Darksky.new("apikey").get_forecast("37", "-122", extend_hourly: true)
      end
    end

    it "should use include correct blocks to exclude when specified" do
      exclude = [Darksky::Blocks::Currently, Darksky::Blocks::Daily, Darksky::Blocks::Hourly] 

      WebMock.wrap do
        WebMock.stub(:any, "https://api.darksky.net/forecast/apikey/37,-122?").
          with(query: {"lang" => "en", "units" => "auto", "exclude" => exclude.join(",") { |i| i.text } }).
          to_return(body: %({"latitude": 0, "longitude":0, "timezone":""}))

        Darksky.new("apikey").get_forecast("37", "-122", exclude: exclude)
      end
    end
  end

end
