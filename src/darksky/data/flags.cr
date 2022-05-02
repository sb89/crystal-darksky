require "json"

module Darksky
  class Flags
    include JSON::Serializable

    @[JSON::Field(key: "darksky-unavailable")]
    property darkysky_unavailable : String?
    property sources : Array(String)
    property units : String

  end
end