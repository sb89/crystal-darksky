module Darksky
  enum Language
    AR
    AZ
    BE
    BG
    BS
    CA
    DE
    EL
    EN 
    ES
    ET
    FR
    HR
    HU
    ID
    IT
    IS
    KW
    NB
    NL
    PL
    PT
    RU
    SK
    SL
    SR
    SV
    TET
    TR
    UK
    X_PIG_LATIN
    ZH
    ZH_TW

    def text
      case self
      when X_PIG_LATIN
        "x-pig-latin"
      when ZH_TW
        "zh-tw"
      else
        self.to_s.downcase
      end
    end
  end
end