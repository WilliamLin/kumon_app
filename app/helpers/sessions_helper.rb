module SessionsHelper

  def sign_in(account)
    cookies.permanent[:remember_token] = account.remember_token
    self.current_account = account
  end

  def signed_in?
    current_account
    !@current_account.nil?
  end

  def signed_in_account
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end

  def current_account=(account)
    @current_account = account
  end

  def current_account
    @current_account ||= Account.find_by_remember_token(cookies[:remember_token])
  end

  def current_account?(account)
    account == current_account
  end

  def sign_out
    self.current_account = nil
    cookies.delete(:remember_token)
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url
  end
end