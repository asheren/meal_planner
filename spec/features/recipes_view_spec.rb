require 'spec_helper'
require 'capybara/rails'
require 'capybara/rspec'

describe "adding a recipe", :type => :feature do 
	before :each do
		recipe.make(:name => 'example')
	end

	it "creates a new recipe" do
		visit 'recipes/new'
		within('#recipe') do
			fill_in 'name', :with => 'example'
			fill_in 'recipe link', :with => 'http://www.foodnetwork.com'
		end
		click_link 'Create Recipe'
		expect(page).to have_content 'Recipe was successfully created.'
	end
end