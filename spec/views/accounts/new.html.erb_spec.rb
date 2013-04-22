require 'spec_helper'

describe "accounts/new" do
  before(:each) do
    assign(:account, stub_model(Account,
      :account_number => "MyString",
      :account_status => "MyString",
      :previous_account_number => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path, :method => "post" do
      assert_select "input#account_account_number", :name => "account[account_number]"
      assert_select "input#account_account_status", :name => "account[account_status]"
      assert_select "input#account_previous_account_number", :name => "account[previous_account_number]"
      assert_select "input#account_type", :name => "account[type]"
    end
  end
end
