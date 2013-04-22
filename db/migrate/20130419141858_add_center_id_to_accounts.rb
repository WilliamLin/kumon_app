class AddCenterIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :center_id, :integer
  end
end
