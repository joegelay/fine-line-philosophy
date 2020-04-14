class EntriesController < ApplicationController
    def index 
        @entry = Entry.all 
        render json: @entry
    end 

    def show 
        @entry = Entry.find(params[:id])
        render json: @entry, include: [:user, :idea]
    end 
end
