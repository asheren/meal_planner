class Recipe < ApplicationRecord
	acts_as_taggable_on :tags
	
	def self.recipes_unscheduled
		where(cook_on: nil)
	end

	def self.recipes_scheduled
		where.not(cook_on: nil)
	end


end
