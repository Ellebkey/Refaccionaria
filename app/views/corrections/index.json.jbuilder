json.array!(@corrections) do |correction|
  json.extract! correction, :id, :description, :ticket_id
  json.url correction_url(correction, format: :json)
end
