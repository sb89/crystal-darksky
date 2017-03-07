module Darksky
  class Alert
    JSON.mapping({
      description:          String,  
      expires:              Int64?,
      regions:              Array(String),
      severity:             String,
      time:                 Int64,   
      title:                String,
      uri:                  String
    })
  end
end