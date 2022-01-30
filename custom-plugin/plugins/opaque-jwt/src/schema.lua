local typedefs = require "kong.db.schema.typedefs"

return {
  name = "opaque-jwt",
  fields = {
    {
        consumer = typedefs.no_consumer
    },
    {
        protocols = typedefs.protocols_http
    },    { config = {
        type = "record",
        fields = {
          { introspection_endpoint = typedefs.url({ required = true }) },
          { token_cache_seconds = { type = "number", required = true, default = 0 } },
          { application = { type = "string", required = false } },
          { token_header = typedefs.header_name { default = "Authorization", required = true }, }
    }, }, },
  },
}