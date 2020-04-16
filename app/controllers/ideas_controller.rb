class IdeasController < ApplicationController
    def index 
        @ideas = Idea.all 
        render json: @ideas, include: { entries: { include: :user } }
    end 

    def show
        @idea = Idea.find(params[:id])
        render json: @idea, include: { entries: { include: [:user, :idea] } }
    end 
end
