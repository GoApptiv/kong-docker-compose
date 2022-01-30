package = "opaque-jwt"
version = "1.0-1"
source = {
   url = ""
}
description = {
   summary = "A plugin for Kong which validates and replaces an opaque token with a newly signed JWT containing claims obtained through introspection.",
   homepage = "",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.opaque-jwt.access"] = "src/access.lua",
      ["kong.plugins.opaque-jwt.handler"]  = "src/handler.lua",
      ["kong.plugins.opaque-jwt.schema"]= "src/schema.lua",
   }
}