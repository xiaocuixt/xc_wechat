json.array!(@albums) do |album|
  json.extract! album, :id, :avatar
  json.url album_url(album, format: :json)
end
