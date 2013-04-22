class AddressTypeFixColumnName < ActiveRecord::Migration
  def up
  	 rename_column :addresses, :type, :address_type
  end

  def down
  end
end
