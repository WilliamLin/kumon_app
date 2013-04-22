class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.string :account_status
      t.string :previous_account_number
      t.string :type

      t.timestamps
    end
  end
end
