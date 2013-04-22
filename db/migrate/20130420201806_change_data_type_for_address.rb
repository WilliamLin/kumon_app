class ChangeDataTypeForAddress < ActiveRecord::Migration
  def self.up
    change_table :addresses do |t|
      t.change :account_id, :integer
    end
  end
  def self.down
  end
end
