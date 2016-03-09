json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :telphone, :address, :content, :latitude, :longitude
  json.url shop_url(shop, format: :json)
end
