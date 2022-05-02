require "json"

module Darksky
  class Datablock
    include JSON::Serializable

    property data : Array(Datapoint)
    property summary : String
    property icon : String?
  end
end