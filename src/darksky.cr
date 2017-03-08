require "http/client"
require "json"

require "./darksky/*"

module Darksky
  def self.new(key : String, lang : Language = Language::EN, units : Units = Units::Auto, extend_hourly : Bool = false, exclude : Array(Blocks)? = nil)
    Client.new(key, lang, units, extend_hourly, exclude)
  end
end
