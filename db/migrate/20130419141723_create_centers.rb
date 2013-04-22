class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.string :center_number
      t.integer :address_id

      t.timestamps
    end
  end
end
