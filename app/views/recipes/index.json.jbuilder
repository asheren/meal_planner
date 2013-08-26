json.array!(@recipes) do |recipe|
  json.extract! recipe, :name, :recipe_id, :cook_on, :recipe_link, :recipe_description, :tag_list
  json.url recipe_url(recipe, format: :json)
end
