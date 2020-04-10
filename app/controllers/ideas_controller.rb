class IdeasController < ApplicationController
    def index 
        @ideas = Idea.all 
        render json: @ideas 
    end 

    def create
        

    end 
end
