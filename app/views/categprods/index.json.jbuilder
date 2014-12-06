json.array!(@categprods) do |categprod|
  json.extract! categprod, :id, :type
  json.url categprod_url(categprod, format: :json)
end
