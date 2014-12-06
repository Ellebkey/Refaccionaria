json.array!(@factures) do |facture|
  json.extract! facture, :id, :fecha, :totalfac, :client_id
  json.url facture_url(facture, format: :json)
end
