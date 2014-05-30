json.array!(@beers) do |beer|
  json.extract! beer, :id, :brewery, :name, :style, :price, :abv, :Untapped_Beer_id
  json.url beer_url(beer, format: :json)
end
