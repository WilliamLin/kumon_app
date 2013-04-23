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
  before_save { |account| account.user_id = user_id.downcase }
  before_save :create_remember_token
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :user_id, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

   private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
