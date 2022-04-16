class TeeTime < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :user_tee_times

  validates :open_spots, numericality: { only_integer: true }
  validates :open_spots, numericality: { greater_than_or_equal_to: 0 }
  validates :open_spots, numericality: { less_than_or_equal_to: 3 }
end
