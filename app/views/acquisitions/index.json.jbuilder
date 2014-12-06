json.array!(@acquisitions) do |acquisition|
  json.extract! acquisition, :id, :cant, :product_id, :buy_id
  json.url acquisition_url(acquisition, format: :json)
end
