class Rating < ApplicationRecord
    belongs_to :user
    belongs_to :movie

    validates :rate, numericality: {greater_than: 0 , less_than: 11 }
end
