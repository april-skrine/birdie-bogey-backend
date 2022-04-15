class TeeTimesController < ApplicationController

    def index
        render json: TeeTime.all, include: [:user], status: :ok
    end

    def create
        new_tee_time = TeeTime.create!(tee_time_params)
        render json: new_tee_time, status: :created
    end

    private

    def tee_time_params
        params.permit(:golf_course, :location, :number_of_holes, :time, :user_id, :date)
    end

end
