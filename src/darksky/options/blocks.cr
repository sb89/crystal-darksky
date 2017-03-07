module Darksky
  enum Blocks
    Currently
    Minutely
    Hourly
    Daily
    Alerts
    Flags

    def text
      self.to_s.downcase
    end
  end
end