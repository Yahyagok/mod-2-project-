class RatingsController < ApplicationController

    def new 
        @rating = Rating.new 
    end 

    def create 
    
        rating_hash = rating_params
    
        rating_hash[:user_id] = @current_user.id
    
        rating = Rating.create(rating_params)
        redirect_to movie_path(rating.movie)


        # @rating = Rating.create(rating_params)
        # if @rating.valid? 
        # redirect_to movies_path
        # else  
        #     flash[:errors] = @rating.errors.full_messages
        #     redirect_to new_rating_path
        # end 
    end 

    private 

    def rating_params 
        params.require(:rating).permit(:rate, :movie_id, :user_id )
    end 
end
