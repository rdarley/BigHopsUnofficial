json.array!(@active_beers) do |active_beer|
  json.extract! active_beer, :id, :Location_id, :Beer_id
  json.url active_beer_url(active_beer, format: :json)
end
