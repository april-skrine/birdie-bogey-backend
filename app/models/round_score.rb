class RoundScore < ApplicationRecord
  belongs_to :user
  has_many :hole_scores
end
