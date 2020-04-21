class UsersController < ApplicationController
    def index 
        admin_authenticate 
        
        @users = User.all 
        render json: @users 
    end 

    def show
        admin_authenticate 

        @user = User.find(params[:id])
        render json: @user 
    end 

    def create
        @user = User.new(user_params)

        if @user.save 
            render json: { user: @user }, status: :created
        else 
            render json: @user.errors.messages
        end 
    end 

    def update
        admin_authenticate 

        @user = User.find(params[:id])

        if @user.update(user_params)
            render json: @user 
        else 
            render json: @user.errors.messages
        end 
    end

    def destroy
        admin_authenticate 

        @user = User.find(params[:id])
        @user.destroy 

        render json: {message: "#{@user} was deleted."}
    end 

    private 

    def user_params
        params.require(:user).permit([:username, :email, :password])
    end 
end
