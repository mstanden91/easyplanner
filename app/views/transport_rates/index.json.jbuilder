json.array!(@transport_rates) do |transport_rate|
  json.extract! transport_rate, :id, :list_id, :comunne_id, :price
  json.url transport_rate_url(transport_rate, format: :json)
end
