local BasePlugin = require "kong.plugins.base_plugin"

local RedirectApiHandler = BasePlugin:extend()

RedirectApiHandler.VERSION = "1.0.0"
RedirectApiHandler.PRIORITY = 10

function RedirectApiHandler:new()
  RedirectApiHandler.super.new(self, "redirect-api")
end

function RedirectApiHandler:access(conf)
  RedirectApiHandler.super.access(self)

  local request_path = kong.request.get_path()

  if request_path == "/api" then
    kong.service.request.set_path("/api-v2")
  end
end

return RedirectApiHandler
