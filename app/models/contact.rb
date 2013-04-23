class Contact < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :middle_name, :gender, :home_phone, :alt_phone, :birthday, :email
  has_one :address 
  has_many :account_contacts 
  has_many :accounts, :through => :account_contacts 

  def name 
  	first_name+" "+middle_name+" "+last_name  	
  end 

  def age
  	now = Time.now.utc.to_date
  	now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def to_s
  	"Name: " + name + ", Gender:" + gender + ", Age:" + age.to_s 
  end 

  def contactInfo
  	"Home Phone: "+home_phone+", Email: "+email
  end 
end
