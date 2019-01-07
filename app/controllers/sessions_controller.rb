class SessionsController < ApplicationController

	def create
				user = User.find_by_user_name(params[:name])
				if user and user.password == params[:password]
						session[:user_id] = user.id
						redirect_to('/index')
				else
						redirect_to('/login')
				end
	end

	def destroy
				session[:user_id] = nil
				redirect_to('/logout')
	end
end


# class SessionsController < ApplicationController

# 	def new
# 	end

#   def create
# 		user = User.find_by(user_name: params[:session][:user_name].downcase)
# 		if user && user.authenticate(params[:session][:password])
# 			redirect_to('/index')
# 		else
# 			redirect_to('/login')
# 		end
#   end

#   def destroy
# 		session[:user_name] = nil
# 		redirect_to('/logout')
#   end
# end