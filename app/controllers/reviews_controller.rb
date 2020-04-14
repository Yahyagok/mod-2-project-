class ReviewsController < ApplicationController

def new 
  @review = Review.new 
end 

def create 
 review = Review.create(review_params)
 redirect_to review_path 
end 

private 

def review_params
  params.require(:review).permit(:user_id, :movie_id, :comment)
end 


end
