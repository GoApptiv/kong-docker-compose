local BasePlugin = require "kong.plugins.base_plugin"
local access = require "kong.plugins.opaque-jwt.access"

local TokenHandler = BasePlugin:extend()
TokenHandler.PRIORITY = 1006

function TokenHandler:new()
    TokenHandler.super.new(self, "opaque-jwt")
end

function TokenHandler:access(config)
    TokenHandler.super.access(self)
    access.execute(config)
  end

return TokenHandler