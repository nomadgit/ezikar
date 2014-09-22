json.array!(@kars) do |kar|
  json.extract! kar, :id, :title, :description, :location
  json.url kar_url(kar, format: :json)
end
