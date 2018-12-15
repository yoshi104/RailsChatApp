class SessionsController < ApplicationController
  def new
  end

  def create
		user = User.find_by_user_name(params[:name])
		if user and user.password=params[:password]
			session[:user_id] = user.id
			redirect_to('/login')
		else
			redirect_to('/')
		end
  end

  def destroy
		session[:user_id] = nil
		redirect_to('/logout')
  end
end