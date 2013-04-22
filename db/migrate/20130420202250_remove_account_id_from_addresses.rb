class RemoveAccountIdFromAddresses < ActiveRecord::Migration
  def up
    remove_column :addresses, :account_id
  end

  def down
    add_column :addresses, :account_id, :integer
  end
end
