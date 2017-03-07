module Darksky
  class Alert
    JSON.mapping({
      description:          String,  
      expires:              {type: Int64, nilable: true},
      regions:              Array(String),
      severity:             String,
      time:                 Int64,   
      title:                String,
      uri:                  String
    })
  end
end