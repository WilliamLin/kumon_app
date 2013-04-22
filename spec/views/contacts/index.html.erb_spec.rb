require 'spec_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :first_name => "First Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name",
        :email => "Email",
        :home_phone => "Home Phone",
        :alt_phone => "Alt Phone",
        :gender => "Gender"
      ),
      stub_model(Contact,
        :first_name => "First Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name",
        :email => "Email",
        :home_phone => "Home Phone",
        :alt_phone => "Alt Phone",
        :gender => "Gender"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Alt Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
  end
end
