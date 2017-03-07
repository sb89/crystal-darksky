module Darksky
  enum Units
    Auto
    CA
    UK2
    US
    SI

    def text
      self.to_s.downcase
    end
  end
end