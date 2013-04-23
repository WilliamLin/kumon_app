class Contact < ActiveRecord::Base
  attr_accessible :alt_phone, :birthday, :email, :first_name, :gender, :home_phone, :last_name, :middle_name
  has_one :address 
  has_many :account_contacts 
  has_many :accounts, :through => :account_contacts 

  def name 
  	first_name+" "+middle_name+" "+last_name  	
  end 
end
