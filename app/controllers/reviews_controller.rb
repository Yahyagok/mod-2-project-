class ReviewsController < ApplicationController
    before_action :find_review, only: [ :edit, :update, :destroy ]
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


      def edit 
    
      end 


      def update 

        review_hash = review_params
    
        review_hash[:user_id] = @current_user.id
       
        @review.update(review_params)
        redirect_to movies_path
      end 

     def destroy 
        movie= @review.movie 
         @review.destroy 
         redirect_to movie_path(movie)
     end 

      private
      def review_params
          params.require(:review).permit(:comment, :movie_id, :user_id)
      end

      def find_review 
        @review = Review.find(params[:id])
      end 

      
   


end
