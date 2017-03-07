module Darksky
  class Forecast
    JSON.mapping({
      latitude:          Float64,
      longitude:         Float64,
      timezone:          String,
      currently:         Datapoint?,
      minutely:          Datablock?,
      hourly:            Datablock?,
      daily:             Datablock?,
      alerts:            Array(Alert)?,
      flags:             Flags?,
    })
  end
end