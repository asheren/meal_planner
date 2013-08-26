class Recipe < ActiveRecord::Base
	acts_as_taggable_on :tags

	# belongs_to :recipe_link,  <%= link_to @recipe.url, @recipe.url %>
	#another idea: validates? although link isn't required for saving which is what 
	# validates is used for
end
