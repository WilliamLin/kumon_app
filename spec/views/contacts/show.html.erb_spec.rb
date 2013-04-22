require 'spec_helper'

describe "contacts/show" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :first_name => "First Name",
      :last_name => "Last Name",
      :middle_name => "Middle Name",
      :email => "Email",
      :home_phone => "Home Phone",
      :alt_phone => "Alt Phone",
      :gender => "Gender"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Middle Name/)
    rendered.should match(/Email/)
    rendered.should match(/Home Phone/)
    rendered.should match(/Alt Phone/)
    rendered.should match(/Gender/)
  end
end
