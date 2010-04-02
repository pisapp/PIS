class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  private
  def authorize
    # check login
    unless session[:username]
      flash[:notice] = "Please login!"
      redirect_to login_url
    end
  end    
end
