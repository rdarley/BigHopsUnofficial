json.array!(@untapped_beers) do |untapped_beer|
  json.extract! untapped_beer, :id, :beer_style, :rating_score, :description, :untapped_id, :updated
  json.url untapped_beer_url(untapped_beer, format: :json)
end
