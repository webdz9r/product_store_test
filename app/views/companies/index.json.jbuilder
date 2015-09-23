json.array!(@companies) do |company|
  json.extract! company, :id, :name, :ticker, :founded_date, :hq_location, :short_summary, :website, :twitter, :instagram, :linkedin, :youtube, :facebook
  json.url company_url(company, format: :json)
end
