require 'spec_helper'

describe "accounts/edit" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :account_number => "MyString",
      :account_status => "MyString",
      :previous_account_number => "MyString",
      :type => ""
    ))
  end

  it "renders the edit account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path(@account), :method => "post" do
      assert_select "input#account_account_number", :name => "account[account_number]"
      assert_select "input#account_account_status", :name => "account[account_status]"
      assert_select "input#account_previous_account_number", :name => "account[previous_account_number]"
      assert_select "input#account_type", :name => "account[type]"
    end
  end
end
