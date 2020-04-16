class FavoritesController < ApplicationController


    def new 
        @favorite = Favorite.new
    end 

    def create 

       favorite_hash = favorite_params 
       favorite_hash[:user_id] = @current_user.id
       favorite = Favorite.create(favorite_params)
        if favorite.valid? 
             redirect_to user_path(favorite.user )
        else
             flash[:errors] = "This Movie is already in your profile"
             redirect_to new_favorite_path
        end 



    end 

    private 

    def favorite_params 
        params.require(:favorite).permit(:user_id, :movie_id)

    end 


end
