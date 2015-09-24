json.array!(@specs) do |spec|
  json.extract! spec, :id, :name, :promo_title
  json.url spec_url(spec, format: :json)
end
