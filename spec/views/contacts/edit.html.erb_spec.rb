require 'spec_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :first_name => "MyString",
      :last_name => "MyString",
      :middle_name => "MyString",
      :email => "MyString",
      :home_phone => "MyString",
      :alt_phone => "MyString",
      :gender => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path(@contact), :method => "post" do
      assert_select "input#contact_first_name", :name => "contact[first_name]"
      assert_select "input#contact_last_name", :name => "contact[last_name]"
      assert_select "input#contact_middle_name", :name => "contact[middle_name]"
      assert_select "input#contact_email", :name => "contact[email]"
      assert_select "input#contact_home_phone", :name => "contact[home_phone]"
      assert_select "input#contact_alt_phone", :name => "contact[alt_phone]"
      assert_select "input#contact_gender", :name => "contact[gender]"
    end
  end
end
