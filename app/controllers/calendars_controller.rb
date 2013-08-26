class CalendarsController < ApplicationController
   def show
   	@recipes = Recipe.all
  	@recipes_by_date = @recipes.group_by(&:cook_on)
  	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
