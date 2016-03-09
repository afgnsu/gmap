json.array!(@infos) do |info|
  json.extract! info, :id, :name, :telphone, :address, :website, :note, :latitude, :longitude
  json.url info_url(info, format: :json)
end
