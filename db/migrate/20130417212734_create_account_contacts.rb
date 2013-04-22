class CreateAccountContacts < ActiveRecord::Migration
  def change
    create_table :account_contacts do |t|
      t.string :type
      t.string :grade
      t.integer :school_year_start
      t.integer :school_year_end
      t.boolean :transfer_student

      t.timestamps
    end
  end
end
