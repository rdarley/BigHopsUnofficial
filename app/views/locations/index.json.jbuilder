json.array!(@locations) do |location|
  json.extract! location, :id, :name, :url, :parser
  json.url location_url(location, format: :json)
end
