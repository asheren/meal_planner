json.array!(@recipes) do |recipe|
  json.extract! recipe, :name, :recipe_id, :recipe_link, :recipe_description, :cook_on, :tag_list
  json.url recipe_url(recipe, format: :json)
end
