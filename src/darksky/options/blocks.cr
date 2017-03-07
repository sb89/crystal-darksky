module Darksky
  enum Blocks
    Currently
    Minutely
    Daily
    Alerts
    Flags

    def text
      self.to_s.downcase
    end
  end
end