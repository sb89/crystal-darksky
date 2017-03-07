module Darksky
  class Datapoint
    JSON.mapping({
      apparent_temperature:           {type: Float64, key: "apparentTemperature", nilable: true},
      apparent_temperature_max:       {type: Float64, key: "apparentTemperatureMax", nilable: true},
      apparent_temperature_max_time:  {type: Int64, key: "apparentTemperatureMaxTime", nilable: true},
      apparent_temperature_min:       {type: Float64, key: "apparentTemperatureMin", nilable: true},
      apparent_temperature_min_time:  {type: Int64, key: "apparentTemperatureMinTime", nilable: true},
      cloud_cover:                    {type: Float64, key: "cloudCover", nilable: true},
      dew_point:                      {type: Float64, key: "dewPoint", nilable: true},
      humidity:                       {type: Float64, nilable: true},
      icon:                           {type: String, nilable: true},
      moon_phase:                     {type: Float64, key: "moonPhase", nilable: true},
      nearest_storm_bearing:          {type: Float64, key: "nearestStormBearing", nilable: true},
      nearest_storm_distance:         {type: Float64, key: "nearestStormDistance", nilable: true},
      ozone:                          {type: Float64, nilable: true},
      precip_accumulation:            {type: Float64, key: "precipAccumulation", nilable: true},
      precip_intensity:               {type: Float64, key: "precipIntensity", nilable: true},
      precip_intensity_max:           {type: Float64, key: "precipIntensityMax", nilable: true},
      precip_intensity_max_time:      {type: Int64, key: "precipIntensityMaxTime", nilable: true},
      precip_probability:             {type: Float64, key: "precipProbability", nilable: true},
      precip_type:                    {type: String, key: "precipType", nilable: true},
      pressure:                       {type: Float64, nilable: true},
      summary:                        {type: String, nilable: true},
      sunrise_time:                   {type: Int64, key: "sunriseTime", nilable: true},
      sunset_time:                    {type: Int64, key: "sunsetTime", nilable: true},
      temperature:                    {type: Float64, nilable: true},
      temperature_max:                {type: Float64, key: "temperatureMax", nilable: true},
      temperature_max_time:           {type: Int64, key: "temperatureMaxTime", nilable: true},
      temperature_min:                {type: Float64, key: "temperatureMin", nilable: true},
      temperature_min_time:           {type: Int64, key: "temperatureMinTime", nilable: true},
      time:                           Int64,
      visibility:                     {type: Float64, nilable: true},
      wind_bearing:                   {type: Float64, key: "windBearing", nilable: true},
      wind_speed:                     {type: Float64, key: "windSpeed", nilable: true}
    })  
  end
end