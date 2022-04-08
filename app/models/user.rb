class User < ApplicationRecord

    has_secure_password
    
    has_many :tee_times
    has_many :comments, through: :tee_times
    has_many :round_scores
    has_many :hole_scores, through: :round_scores

    validates :username, presence: true, on: :create
    validates :username, uniqueness: true, on: :create
    validates :password, length: {minimum: 5, maximum: 10}, on: :create

end
