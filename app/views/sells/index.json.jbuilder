json.array!(@sells) do |sell|
  json.extract! sell, :id, :cant, :totalp, :state, :product_id, :facture_id
  json.url sell_url(sell, format: :json)
end
