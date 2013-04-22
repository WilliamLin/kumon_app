class Address < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :state, :address_type, :zip, :accounts, :contacts
  belongs_to :accounts 
  belongs_to :contacts
end
