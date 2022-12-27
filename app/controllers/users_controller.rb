class UsersController < ApplicationController
    def show
            user = User.find_by(id: session[:user_id])
            byebug
        if user.password == params[:password]
            render json: user
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end
end