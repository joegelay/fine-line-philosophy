class PairsController < ApplicationController
    def index 
        @pairs = Pair.all 
        render json: @pairs, include: [:idea_one, :idea_two]
    end 

    def show 
        @pair = Pair.find(params[:id])
        render json: @pair, include: [:idea_one, :idea_two]
    end 
end
