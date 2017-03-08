require "http/client"
require "json"

require "./darksky/*"

module Darksky
  def self.new(key : String, lang = Language::EN, units = Units::Auto, extend_hourly = false, exclude = Array(Blocks).new)
    Client.new(key, lang, units, extend_hourly, exclude)
  end
end
