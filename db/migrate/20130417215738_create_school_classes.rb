class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.string :subject
      t.integer :grade
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
