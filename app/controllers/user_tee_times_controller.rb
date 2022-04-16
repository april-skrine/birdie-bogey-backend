class UserTeeTimesController < ApplicationController
    def create
        user_tee_time = UserTeeTime.create!(tee_time_params)
        render json: user_tee_time, status: :created
    end

    private
    
    def tee_time_params
        params.permit(:user_id, :tee_time_id)
    end
end
