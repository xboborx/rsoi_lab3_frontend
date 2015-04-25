class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def current_user
   #if session[:user_key]
   #   usersession = Usersession.find(session[:user_key])

      @current_user ||= User.find(Usersession.find(session[:user_key]).user_id) if session[:user_key]
  #end
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end

end
