require 'spec_helper'

describe Recipe do
  
  it "should have content" do
  	visit '/recipes'
  	expect(page).to be_valid
  end

  it "has an array of tags" do 
  	expect(recipes.tags).to eq([])
  end
end

describe Tags do

	it "should be connected to a user" do 
		expect(tags).to respond_to(:link_to)
	end

	it "should be connected to a recipe" do
		expect(tags).to respond_to(:recipe)
	end

	it "should sort based on the user" do 
		expect(tags).to respond_to(:user)
	end


