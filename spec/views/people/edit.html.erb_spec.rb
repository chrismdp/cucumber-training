require 'spec_helper'

describe "people/edit.html.erb" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :firstname => "MyString",
      :familyname => "MyString",
      :gender => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path(@person), :method => "post" do
      assert_select "input#person_firstname", :name => "person[firstname]"
      assert_select "input#person_familyname", :name => "person[familyname]"
      assert_select "input#person_gender", :name => "person[gender]"
    end
  end
end
