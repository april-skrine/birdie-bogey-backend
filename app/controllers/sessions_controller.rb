class SessionsController < ApplicationController
    
    skip_before_action :authorized_user, only: [:login]

    def login
        user = User.find_by(username: params[:username])
		if user&.authenticate(params[:password])
			session[:current_user] = user.id
			render json: user, status: :created
        else
			render json: {error: {login: "Invalid username or password"}}, status: :unprocessable_entity 
	    end
    end

    def logout
        session.delete :current_user
        render json: {}
    end

end