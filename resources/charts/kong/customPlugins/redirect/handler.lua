local redirect = require "kong.plugins.redirect-api.redirect"

local CustomHandler = {
  VERSION  = "1.0.0",
  PRIORITY = 10
}

CustomHandler.access = redirect

return CustomHandler
