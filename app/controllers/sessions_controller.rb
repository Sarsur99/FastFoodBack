class SessionsController < ApplicationController
    def index
        session[:session_hello] ||= "World"
        cookies[:cookies_hello] ||= "World"
        render json: { session: session, cookies: cookies.to_hash }
    end

    def create
        user = User.find_by(username: params[:name])
        session[:user_id] = user.id
        render json: user
    end

    def destroy
        session[:user_id] = nil
        render json: { status: "Session destroyed!" }
    end

end