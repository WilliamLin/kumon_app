class AddAccountIdToAccountContacts < ActiveRecord::Migration
  def change
    add_column :account_contacts, :account_id, :integer
    add_column :account_contacts, :contact_id, :integer
  end
end
