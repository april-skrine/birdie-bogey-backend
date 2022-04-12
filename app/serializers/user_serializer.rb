class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :location
  has_many :round_scores
end
