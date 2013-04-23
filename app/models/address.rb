class Address < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :state, :address_type, :zip, :accounts, :contacts
  belongs_to :accounts 
  belongs_to :contacts

  def to_HTMLText
  	address1 + "<br>" + address2 + "<br>" + city + " " +state + " " + " " +zip  	
  end

  def to_s
  	address1 + "\n" + address2 + "\n" + city + ' ' + state + ' ' + zip  	
  end 
end
