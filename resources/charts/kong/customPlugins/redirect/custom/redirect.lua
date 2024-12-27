return function(config)
  local path = kong.request.get_path() or ''

  if path:find('^/api') ~= nil then
    kong.service.request.set_path('/api-v2')
  end
end
