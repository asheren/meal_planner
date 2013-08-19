require 'spec_helper'

describe "recipes/edit" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :recipe_id => 1,
      :recipe_link => "MyString",
      :recipe_description => "MyString"
    ))
  end

  it "renders the edit recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do
      assert_select "input#recipe_name[name=?]", "recipe[name]"
      assert_select "input#recipe_recipe_id[name=?]", "recipe[recipe_id]"
      assert_select "input#recipe_recipe_link[name=?]", "recipe[recipe_link]"
      assert_select "input#recipe_recipe_description[name=?]", "recipe[recipe_description]"
    end
  end
end
