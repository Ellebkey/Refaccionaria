json.array!(@buys) do |buy|
  json.extract! buy, :id, :total, :fecha, :admin_user_id, :provider_id
  json.url buy_url(buy, format: :json)
end
