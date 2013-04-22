class Payment < ActiveRecord::Base
  attr_accessible :amount, :auto_renew, :due_date, :payment_method, :payment_status
end
