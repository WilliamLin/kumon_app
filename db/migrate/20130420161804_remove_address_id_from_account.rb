class RemoveAddressIdFromAccount < ActiveRecord::Migration
  def up
    remove_column :accounts, :address_id
  end

  def down
    add_column :accounts, :address_id, :integer
  end
end
