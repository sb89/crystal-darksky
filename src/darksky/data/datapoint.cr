module Darksky
  class Datapoint
    JSON.mapping({
      apparent_temperature:           {type: Float64?, key: "apparentTemperature"},
      apparent_temperature_max:       {type: Float64?, key: "apparentTemperatureMax"},
      apparent_temperature_max_time:  {type: Int64?, key: "apparentTemperatureMaxTime"},
      apparent_temperature_min:       {type: Float64?, key: "apparentTemperatureMin"},
      apparent_temperature_min_time:  {type: Int64?, key: "apparentTemperatureMinTime"},
      cloud_cover:                    {type: Float64?, key: "cloudCover"},
      dew_point:                      {type: Float64?, key: "dewPoint"},
      humidity:                       Float64?,
      icon:                           String?,
      moon_phase:                     {type: Float64?, key: "moonPhase"},
      nearest_storm_bearing:          {type: Float64?, key: "nearestStormBearing"},
      nearest_storm_distance:         {type: Float64?, key: "nearestStormDistance"},
      ozone:                          Float64?,
      precip_accumulation:            {type: Float64?, key: "precipAccumulation"},
      precip_intensity:               {type: Float64?, key: "precipIntensity"},
      precip_intensity_max:           {type: Float64?, key: "precipIntensityMax"},
      precip_intensity_max_time:      {type: Int64?, key: "precipIntensityMaxTime"},
      precip_probability:             {type: Float64?, key: "precipProbability"},
      precip_type:                    {type: String?, key: "precipType"},
      pressure:                       Float64?,
      summary:                        String?,
      sunrise_time:                   {type: Int64?, key: "sunriseTime"},
      sunset_time:                    {type: Int64?, key: "sunsetTime"},
      temperature:                    Float64?,
      temperature_max:                {type: Float64?, key: "temperatureMax"},
      temperature_max_time:           {type: Int64?, key: "temperatureMaxTime"},
      temperature_min:                {type: Float64?, key: "temperatureMin"},
      temperature_min_time:           {type: Int64?, key: "temperatureMinTime"},
      time:                           Int64,
      visibility:                     Float64?,
      wind_bearing:                   {type: Float64?, key: "windBearing"},
      wind_speed:                     {type: Float64?, key: "windSpeed"}
    })  
  end
end