class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :due_date
      t.float :amount
      t.string :payment_method
      t.string :payment_status
      t.boolean :auto_renew

      t.timestamps
    end
  end
end
