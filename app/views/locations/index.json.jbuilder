json.array!(@locations) do |location|
  json.extract! location, :id, :title
  json.url location_url(location, format: :json)
end
