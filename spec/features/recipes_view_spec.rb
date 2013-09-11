require 'spec_helper'
require 'capybara/rails'
require 'capybara/rspec'

describe "working with recipes", :type => :feature do 

	context "when viewing a specific recipe" do 
		let(:recipe) {Recipe.new} #is this correct?
	
	
	  it "shows the recipe" do
		  visit recipe_path(recipe)
		  expect(page).to have_content 'Put the recipe content here'
	  end

		it "has a link to add a new recipe" do 
			visit recipe_path(recipe)

		  expect(page).to have_link('New', href: new_recipe_path(recipe))
	  end
	end

	context "when creating a new recipe" do
		let(:baked_ziti) { Recipe.new name: 'Baked Ziti', link: 'http://www.food52.com' }

		def add_new_recipe(recipe)
			within('#recipe') do
			  fill_in 'name', :with => recipe.name
			  fill_in 'recipe link', :with => recipe.link
		  end

		  click_link 'Create Recipe'
		end

		it "redirects back to the index page" do
			visit new_recipe_path
			add_new_recipe baked_ziti

		  expect(page).to have_content 'Recipe was successfully created.'
	  end
	end
end