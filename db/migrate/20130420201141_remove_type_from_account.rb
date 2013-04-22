class RemoveTypeFromAccount < ActiveRecord::Migration
  def up
    remove_column :accounts, :type
  end

  def down
    add_column :accounts, :type, :string
  end
end
