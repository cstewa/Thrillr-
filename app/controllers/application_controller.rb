class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
  	if session[:email]
  		@current_user = User.find_by_email(session[:email])
  	end
  end

  helper_method :current_user
end
