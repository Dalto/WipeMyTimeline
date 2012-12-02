class SessionsController < ApplicationController
	def create
		session[:access_token] = request.env['omniauth.auth']
		redirect_to '/'
	end
end
