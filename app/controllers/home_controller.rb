class HomeController < ApplicationController
	def index
		
		if session[:access_token]
			@user = session[:access_token]
		end
	end
end
