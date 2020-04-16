class Rating < ApplicationRecord
    belongs_to :user
    belongs_to :movie


    
#    validates :rate, uniqueness: true
    # validates :rate, inclusion: {in: %w(1 2 3 4 5) }
    validates :rate, numericality: {greater_than: 0 , less_than: 11 }



  
end
