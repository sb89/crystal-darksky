require "http/client"
require "json"

require "./darksky/*"

module Darksky
  def self.new(key : String)
    Client.new(key)
  end
end
