module RecipesHelper
	def not_applicable?(value)
		value.presence || "n/a"
	end

end
