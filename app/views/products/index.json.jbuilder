json.array!(@products) do |product|
  json.extract! product, :id, :name, :clave, :description, :stock, :avaible, :pricepublic, :pricedesc, :pricemaxd, :categproduc_id
  json.url product_url(product, format: :json)
end
