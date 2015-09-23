json.array!(@images) do |image|
  json.extract! image, :id, :role, :name, :product_id
  json.url image_url(image, format: :json)
end
