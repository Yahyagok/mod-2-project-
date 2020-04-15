class FavoritesController < ApplicationController


    def new 

    end 

    def create 
       favorite_hash = favorite_params 
       favorite_hash[:user_id] = @current_user.id
       favorite = Favorite.create(favorite_params)
       redirect_to user_path 

    end 

    private 

    def favorite_params 
        params.require(:favorite).permit(:user_id, :movie_id)

    end 


end
