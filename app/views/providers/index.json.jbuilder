json.array!(@providers) do |provider|
  json.extract! provider, :id, :name, :address, :city, :state, :rfc
  json.url provider_url(provider, format: :json)
end
