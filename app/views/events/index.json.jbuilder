json.array!(@events) do |event|
  json.extract! event, :id, :name, :company_id, :general_hashtag, :internal_hashtag, :start_date, :end_date, :location, :short_summary, :website, :twitter, :instagram, :linked_in, :youtube, :facebook
  json.url event_url(event, format: :json)
end
