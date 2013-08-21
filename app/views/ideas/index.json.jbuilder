json.array!(@ideas) do |idea|
  json.extract! idea, :name, :link
  json.url idea_url(idea, format: :json)
end
