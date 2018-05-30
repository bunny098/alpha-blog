class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in?
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
    !!current_user #check boolean true or false
  end
  
  def require_user
      if !logged_in?
          flash[:danger]="You Must Be Log in To Perform The Action"
          redirect_to root_path
      end
  end
  
end
