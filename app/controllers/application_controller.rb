class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def device_used
    if request.user_agent.include? "iPhone"
      return "iphone"
    elsif (request.user_agent.include? "Android") && (request.user_agent.include? "Mobile")
      return "androidphone"
    elsif request.user_agent.include? "Mobile"
      return "mobile"
    else
      return "desktop"
    end    
  end
  
  helper_method :device_used
end
