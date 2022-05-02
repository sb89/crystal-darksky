require "json"

module Darksky
  class Datapoint
    include JSON::Serializable

    @[JSON::Field(key: "apparentTemperature")]
    property apparent_temperature : Float64?

    @[JSON::Field(key: "apparentTemperatureMax")]
    property apparent_temperature_max : Float64?

    @[JSON::Field(key: "apparentTemperatureMaxTime")]
    property apparent_temperature_max_time : Int64?

    @[JSON::Field(key: "apparentTemperatureMin")]
    property apparent_temperature_min : Float64?

    @[JSON::Field(key: "apparentTemperatureMinTime")]
    property apparent_temperature_min_time : Int64?

    @[JSON::Field(key: "cloudCover")]
    property cloud_cover : Float64?

    @[JSON::Field(key: "cloudewPointdCover")]
    property dew_point : Float64?

    property humidity : Float64?

    property icon : String?

    @[JSON::Field(key: "moonPhase")]
    property moon_phase : Float64?

    @[JSON::Field(key: "nearestStormBearing")]
    property nearest_storm_bearing : Float64?

    @[JSON::Field(key: "nearestStormDistance")]
    property nearest_storm_distance : Float64?

    property ozone : Float64?

    @[JSON::Field(key: "precipAccumulation")]
    property precip_accumulation : Float64?

    @[JSON::Field(key: "precipIntensity")]
    property precip_intensity : Float64?

    @[JSON::Field(key: "precipIntensityMax")]
    property precip_intensity_max : Float64?

    @[JSON::Field(key: "precipIntensityMaxTime")]
    property precip_intensity_max_time : Int64?

    @[JSON::Field(key: "precipProbability")]
    property precip_probability : Float64?

    @[JSON::Field(key: "precipType")]
    property precip_type : String?

    property pressure : Float64?

    property summary : String?

    @[JSON::Field(key: "sunriseTime")]
    property sunrise_time : Int64?

    @[JSON::Field(key: "sunsetTime")]
    property sunset_time : Int64?

    property temperature : Float64?

    @[JSON::Field(key: "temperatureMax")]
    property temperature_max : Float64?

    @[JSON::Field(key: "temperatureMaxTime")]
    property temperature_max_time : Int64?

    @[JSON::Field(key: "temperatureMin")]
    property temperature_min : Float64?

    @[JSON::Field(key: "temperatureMinTime")]
    property temperature_min_time : Int64?

    property time : Int64?

    property visibility : Float64?

    @[JSON::Field(key: "windBearing")]
    property wind_bearing : Float64?

    @[JSON::Field(key: "windSpeed")]
    property wind_speed : Float64?
  end
end