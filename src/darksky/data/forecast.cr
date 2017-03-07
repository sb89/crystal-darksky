module Darksky
  class Forecast
    JSON.mapping({
      latitude:          Float64,
      longitude:         Float64,
      timezone:          String,
      currently:         {type: Datapoint, nilable: true},
      minutely:          {type: Datablock, nilable: true},
      hourly:            {type: Datablock, nilable: true},
      daily:             {type: Datablock, nilable: true},
      alerts:            {type: Array(Alert), nilable: true},
      flags:             {type: Flags, nilable: true},
    })
  end
end