GrapeSwaggerRails.options.url      = '/api/v1/api_spec'
GrapeSwaggerRails.options.before_filter_proc = proc {
  GrapeSwaggerRails.options.app_url = request.protocol + request.host_with_port
}
GrapeSwaggerRails.options.app_name = 'FabUp'
GrapeSwaggerRails.options.doc_expansion = 'list'
GrapeSwaggerRails.options.hide_url_input = true

# GrapeSwaggerRails.options.api_key_name = 'api_token'
# GrapeSwaggerRails.options.api_key_type = 'query'
# GrapeSwaggerRails.options.before_filter do |request|
#   # 1. Inspect the `request` or access the Swagger UI controller via `self`.
#   # 2. Check `current_user` or `can? :access, :api`, etc.
#   # 3. Redirect or error in case of failure.
# end

GrapeSwaggerRails.options.api_auth = 'bearer'
GrapeSwaggerRails.options.api_key_name = 'Authorization'
GrapeSwaggerRails.options.api_key_type = 'header'