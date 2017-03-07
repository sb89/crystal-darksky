module Darksky
  class Datablock
    JSON.mapping({
      data:             Array(Datapoint),
      summary:          String,
      icon:             String?
    })
  end
end