class RatingsController < ApplicationController

    def new 
        @rating = Rating.new 
    end 

    def create 
        @rating = Rating.create(rating_params)
        redirect_to user_path (@rating.user)
    end 

    private 

    def rating_params 
        params.require(:rating).permit(:movie_id, :user_id )
    end 
end
