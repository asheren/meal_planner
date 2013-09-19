require 'spec_helper'

describe Recipe do

  it "has an array of tags" do 
  	expect(@recipe[:tags]).to match_array([])
  end
#end

#describe Tags do
  
	it "connects to a user" do 
		expect(:tags).to respond_to(tag_path)
	end

	it "connects to a recipe" do
		expect(:tags).to respond_to(recipe)
	end

	# it "sorts based on the user" do 
	# 	expect(:tags).to respond_to(:user)
	# end
end


