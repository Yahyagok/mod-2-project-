class User < ApplicationRecord
    has_many :reviews
    has_many :movies, through: :reviews
    has_many :ratings
    has_many :movies, through: :ratings
    has_many :favorites
    has_many :movies, through: :favorites
    
    validates :name, presence: true, uniqueness: true 
    validates :password, presence: true

    has_secure_password
end
