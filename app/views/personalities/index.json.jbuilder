json.array!(@personalities) do |personality|
  json.extract! personality, :id, :name, :position_id, :company_id, :short_summary, :website, :twitter, :instagram, :linked_in, :youtube, :facebook
  json.url personality_url(personality, format: :json)
end
