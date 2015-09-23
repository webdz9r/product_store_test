json.array!(@products) do |product|
  json.extract! product, :id, :name, :short_name, :short_summary, :website, :discontinued, :upc, :asin, :launch_at, :embargo_at
  json.url product_url(product, format: :json)
end
