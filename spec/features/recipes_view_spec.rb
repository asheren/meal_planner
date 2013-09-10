require 'spec_helper'
require 'capybara/rails'
require 'capybara/rspec'

describe "the recipe view", :type => :feature do 
	
	describe 'recipes' do 
	
	before :each do
		recipe.make(:name => 'example')
		visit recipe_path(recipe)
	end

	it 'shows the recipes' do 
		recipe.each do |recipe|
			expect(page).to have_content(recipes)
		end
	end

	it 'has a link to add a new recipe' do 
		expect(page).to have_link('New', href: new_recipe_path(recipe))
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
end