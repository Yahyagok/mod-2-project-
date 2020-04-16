class RatingsController < ApplicationController
    before_action :find_rating , only: [ :edit, :update]
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

    def edit 
        @rating = Rating.find(params[:id])
    end 

    def update

        rating_hash = rating_params
    
        rating_hash[:user_id] = @current_user.id
    
        rating = Rating.update(rating_params)
        redirect_to movie_path(rating.movie)

   end 

    private 

    def rating_params 
        params.require(:rating).permit(:rate, :movie_id, :user_id )
    end 

    def find_rating 
        @rating = Rating.find(params[:id])
    end 
end
