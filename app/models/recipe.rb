class Recipe < ApplicationRecord
	acts_as_taggable_on :tags

	def self.recipes_unscheduled
		where(cook_on: nil)
	end

	def self.recipes_scheduled
		where.not(cook_on: nil)
	end

	# Required for Ransack 4.x+
	def self.ransackable_attributes(auth_object = nil)
		["cook_on", "created_at", "id", "name", "recipe_description", "recipe_id", "recipe_link", "updated_at"]
	end

	def self.ransackable_associations(auth_object = nil)
		["taggings", "tags"]
	end
end
