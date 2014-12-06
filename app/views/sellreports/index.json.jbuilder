json.array!(@sellreports) do |sellreport|
  json.extract! sellreport, :id, :total, :fecha, :sell_id
  json.url sellreport_url(sellreport, format: :json)
end
