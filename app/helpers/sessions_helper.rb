module SessionsHelper
  
  def sign_in(user)
    session[:remember_token] = user.id
    self.current_user = user
  end
  
  def sign_out
    session[:remember_token] = nil
    self.current_user = nil
    reset_session
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:remember_token])
  end
  
  def current_user?(user)
    user == current_user
  end
end
