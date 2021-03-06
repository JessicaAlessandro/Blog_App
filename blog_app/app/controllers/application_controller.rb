class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :store_location

	def store_location
  # store last url - this is needed for post-login redirect to whatever the user last visited.
  return unless request.get? 
		if (request.path != "/users/sign_out" )
		  session[:previous_url] = request.fullpath 
		end
	end

	def after_sign_out_path_for(resource)
	  root_path
	end


end
