require "json"

module Darksky
  class Forecast
    include JSON::Serializable

    property latitude : Float64
    property longitude : Float64
    property timezone : String
    property currently : Datapoint?
    property minutely : Datapoint?
    property hourly : Datapoint?
    property daily : Datapoint?
    property alerts : Array(Alert)?
    property flags : Flags?

  end
end