class UserTeeTimeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :tee_time
end
