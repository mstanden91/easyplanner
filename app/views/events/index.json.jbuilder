json.array!(@events) do |event|
  json.extract! event, :id, :namekid, :comunne_id, :date, :timefrom, :timeto, :guestkid, :guestadult, :address, :phone, :agekidsfrom, :agekidsfrom
  json.url event_url(event, format: :json)
end
