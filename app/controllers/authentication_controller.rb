class AuthenticationController < ApplicationController
    def login 
        @user = User.find_by(username: params[:username])

        if !@user 
            render json: {message: "Cannot find username"}
        else 
            if !@user.authenticate(params[:password])
                render json: {message: "Password incorrect"}
            else 
                render json: {message: "Correct!"}
            end 
        end 
    end 
end
