class Favorite < ApplicationRecord
    belongs_to :user_id
    belongs_to :movie_id 
end
