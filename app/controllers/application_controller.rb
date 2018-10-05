class ApplicationController < ActionController::Base
	rescue_from CanCan::AccessDenied do |exception|
  	redirect_to main_app.root_url, alert: exception.message
	end

	def not_found #404 pages. change the code in config dev to false if you want this
  	raise ActionController::RoutingError.new('Not Found')
	end
end
