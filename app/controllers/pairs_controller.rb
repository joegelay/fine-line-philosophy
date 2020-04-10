class PairsController < ApplicationController
    def index 
        @pairs = Pair.all 
        render json: @pairs 
    end 
end
