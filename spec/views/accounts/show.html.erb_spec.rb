require 'spec_helper'

describe "accounts/show" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :account_number => "Account Number",
      :account_status => "Account Status",
      :previous_account_number => "Previous Account Number",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Account Number/)
    rendered.should match(/Account Status/)
    rendered.should match(/Previous Account Number/)
    rendered.should match(/Type/)
  end
end
