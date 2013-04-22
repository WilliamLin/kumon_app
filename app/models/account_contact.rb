class AccountContact < ActiveRecord::Base
  attr_accessible :type, :contact, :account, :contact_attributes
  belongs_to :contact
  belongs_to :account
  accepts_nested_attributes_for :contact
end
