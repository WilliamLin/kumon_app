class PaymentController < ApplicationController
  before_filter :signed_in_account, only: :index  

end
