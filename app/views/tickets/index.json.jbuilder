json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :totalp, :admin_user_id, :product_id, :sell_id
  json.url ticket_url(ticket, format: :json)
end
