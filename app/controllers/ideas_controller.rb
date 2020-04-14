class IdeasController < ApplicationController
    def index 
        @ideas = Idea.all 
        render json: @ideas, include: :entries
    end 

    def show
        @idea = Idea.find(params[:id])
        render json: @idea, include: :entries
    end 
end
