class Account < ActiveRecord::Base
  #validates_presence_of :user_id
  attr_accessible :account_number, :account_status,  :user_id,:password, :password_confirmation, :address_attributes, :students_attributes, :guardian_attributes, :contact_attributes
  has_one :address, :autosave => true,  :dependent => :destroy
  has_one :guardian
  has_many :students
  has_many :contacts, :through => :guardian 
  has_many :contacts, :through => :students
  accepts_nested_attributes_for :students
  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :guardian
  has_secure_password
  

 
end
