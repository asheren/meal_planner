require 'spec_helper'

describe "recipes/show" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "Name",
      :recipe_id => 1,
      :recipe_link => "Recipe Link",
      :recipe_description => "Recipe Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Recipe Link/)
    rendered.should match(/Recipe Description/)
  end
end
