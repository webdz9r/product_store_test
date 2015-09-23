json.array!(@categories) do |category|
  json.extract! category, :id, :name, :promo_title, :status
  json.url category_url(category, format: :json)
end
