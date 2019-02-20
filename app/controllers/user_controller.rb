class UserController < ApplicationController
    def index
    end

    def register
        user = User.new(user_name: params[:name], password: params[:password])

        if user.save
            redirect_to('/login')
        else
            @error='登録に失敗しました'
            render('user/index')
        end
    end
end
