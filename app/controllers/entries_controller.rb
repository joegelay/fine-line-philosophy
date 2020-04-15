class EntriesController < ApplicationController
    def index 
        @entry = Entry.all 
        render json: @entry
    end 

    def show 
        @entry = Entry.find(params[:id])
        render json: @entry, include: [:user, :idea]
    end 

    # def create 
    #     authenticate 

    #     idea = Idea.find_by(id: params[:idea])
       
    #     @entry = Entry.create(content: params[:content], user: @user, idea: idea)
    # end

    def create 
        idea = Idea.find_by(id: params[:idea])
        user = User.find_by(id: params[:user])

        @entry = Entry.create(content: params[:content], user: user, idea: idea)
    end
end
