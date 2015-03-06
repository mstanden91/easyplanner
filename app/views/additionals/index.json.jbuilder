json.array!(@additionals) do |additional|
  json.extract! additional, :id, :name, :price, :product_id
  json.url additional_url(additional, format: :json)
end
