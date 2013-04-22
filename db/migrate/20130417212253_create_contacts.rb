class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :email
      t.string :home_phone
      t.string :alt_phone
      t.date :birthday
      t.string :gender

      t.timestamps
    end
  end
end
