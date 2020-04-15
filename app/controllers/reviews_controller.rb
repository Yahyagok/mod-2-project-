class ReviewsController < ApplicationController

    def index
        @reviews = Review.all 

    end 

    def new 
        @review = Review.new 
    end 

    def create
    
        review_hash = review_params
    
        review_hash[:user_id] = @current_user.id
    
        review = Review.create(review_params)
        redirect_to movie_path(review.movie)

        # @review = Review.create(review_params)
        # redirect_to movie_path(@review.movie)
      end
      private
      def review_params
          params.require(:review).permit(:comment, :movie_id, :user_id)
      end
   

end
