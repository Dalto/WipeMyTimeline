class ApplicationController < ActionController::Base
	protect_from_forgery

	def current_user
		@current_user ||= getFBUser(session[:access_token])
	end

	helper_method :current_user

	protected

	def getFBUser(access_token)
		if access_token
			return FbGraph::User.new('me', :access_token => access_token['credentials']['token']).fetch		
		end
	end

end
