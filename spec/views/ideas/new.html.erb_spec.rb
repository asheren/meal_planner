require 'spec_helper'

describe "ideas/new" do
  before(:each) do
    assign(:idea, stub_model(Idea,
      :name => "MyString",
      :link => "MyString"
    ).as_new_record)
  end

  it "renders new idea form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ideas_path, "post" do
      assert_select "input#idea_name[name=?]", "idea[name]"
      assert_select "input#idea_link[name=?]", "idea[link]"
    end
  end
end
