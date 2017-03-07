module Darksky
  class Datablock
    JSON.mapping({
      data:             Array(Datapoint),
      summary:          String,
      icon:             {type: String, nilable: true}
    })
  end
end