module Darksky
  class Flags
    JSON.mapping({
      darkysky_unavailable:   {type: String?, key: "darksky-unavailable"},
      sources:                Array(String),
      units:                  String
    })  
  end
end