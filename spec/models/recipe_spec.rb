require 'spec_helper'

describe Recipe do

  it "has an array of tags" do 
  	expect(recipe[:tags]).to eq([])
  end
#end

#describe Tags do
  
	it "connects to a user" do 
		expect(:tags).to respond_to(link_to)
	end

	it "connects to a recipe" do
		expect(:tags).to respond_to(recipe)
	end

	# it "sorts based on the user" do 
	# 	expect(:tags).to respond_to(:user)
	# end
end


