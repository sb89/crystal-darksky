require "json"

module Darksky
  class Alert
    include JSON::Serializable
    
    property description : String
    property expires : Int64?
    property regions : Array(String)
    property severity : String
    property time : Int64
    property title : String
    property uri : String
  end
end