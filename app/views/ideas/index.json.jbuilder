json.array!(@ideas) do |idea|
  json.extract! idea, :name, :link, :tag_list
  json.url idea_url(idea, format: :json)
end
