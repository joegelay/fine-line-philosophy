class EntriesController < ApplicationController
    def index 
        @entry = Entry.all 
        render json: @entry
    end 

    def show 
        @entry = Entry.find(params[:id])
        render json: @entry, include: [:user, :idea]
    end 

    def create 
        auth_header = request.headers['Authorization']
        token = auth_header.split(' ')[1]
        secret = Rails.application.secret_key_base
        payload = JWT.decode(token, secret)[0]
        user_id = payload["user_id"]


        idea = Idea.find_by(id: params[:idea])
        @user = User.find_by(id: user_id)

        if !@user
            render status: :unauthorized
        else 
            @entry = Entry.create(
                content: params[:content],
                user: @user,
                idea: idea
            )
        end 
    end

    # def create 
    #     idea = Idea.find_by(id: params[:idea])
    #     user = User.find_by(id: params[:user])

    #     @entry = Entry.create(
    #         content: params[:content],
    #         user: user,
    #         idea: idea
    #     )
    # end
end
