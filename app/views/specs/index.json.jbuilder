json.array!(@specs) do |spec|
  json.extract! spec, :id, :name, :promo_title, :value, :category_id
  json.url spec_url(spec, format: :json)
end
