require 'spec_helper'

describe Recipe do
  
  it "should have content" do
  	visit '/recipes'
  	expect(page).to be_valid
  end
end
