json.array!(@users) do |user|
  json.extract! user, :name, :location, :latitude, :longitude, :description, :email, :image_url, :url
end