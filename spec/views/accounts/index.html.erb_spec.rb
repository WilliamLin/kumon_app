require 'spec_helper'

describe "accounts/index" do
  before(:each) do
    assign(:accounts, [
      stub_model(Account,
        :account_number => "Account Number",
        :account_status => "Account Status",
        :previous_account_number => "Previous Account Number",
        :type => "Type"
      ),
      stub_model(Account,
        :account_number => "Account Number",
        :account_status => "Account Status",
        :previous_account_number => "Previous Account Number",
        :type => "Type"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Account Number".to_s, :count => 2
    assert_select "tr>td", :text => "Account Status".to_s, :count => 2
    assert_select "tr>td", :text => "Previous Account Number".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
