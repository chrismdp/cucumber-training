require 'spec_helper'

describe "people/new.html.erb" do
  before(:each) do
    assign(:person, stub_model(Person,
      :firstname => "MyString",
      :familyname => "MyString",
      :gender => "MyString"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path, :method => "post" do
      assert_select "input#person_firstname", :name => "person[firstname]"
      assert_select "input#person_familyname", :name => "person[familyname]"
      assert_select "input#person_gender", :name => "person[gender]"
    end
  end
end
