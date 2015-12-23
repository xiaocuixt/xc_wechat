json.array!(@messages) do |message|
  json.extract! message, :id, :keyword, :mtype, :title, :summary, :image, :url
  json.url message_url(message, format: :json)
end
