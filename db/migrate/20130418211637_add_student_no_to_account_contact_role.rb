class AddStudentNoToAccountContactRole < ActiveRecord::Migration
  def change
    add_column :account_contacts, :student_no, :string
  end
end
