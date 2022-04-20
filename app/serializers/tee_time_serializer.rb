class TeeTimeSerializer < ActiveModel::Serializer
    attributes :golf_course, :location, :number_of_holes, :date, :time, :open_spots, :id, :players
    has_one :user

    def players
        object.user_tee_times.map{ |u| u.user.name}
    end
end