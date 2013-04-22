class AddContactIdToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :account_contact_id, :integer
    add_column :enrollments, :school_class_id, :integer
  end
end
