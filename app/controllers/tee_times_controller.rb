class TeeTimesController < ApplicationController

    def index 
        render json: TeeTime.all.order(:date), include: [:user], status: :ok
    end

    def create
        new_tee_time = TeeTime.create!(tee_time_params)
        UserTeeTime.create(tee_time_id: new_tee_time.id, user_id: params[:user_id])
        render json: new_tee_time, status: :created
    end

    def update
        tee_time = TeeTime.find(params[:id])
        if tee_time
            tee_time.update(tee_time_params)
            render json: tee_time
        else
            render json: { error: "Tee time not found" }, status: :not_found
        end
    end

    # def get_names
    #     t = TeeTime.find(params[:id])
    #     names = t.user_tee_times.map{ |u| u.user.name}
    #     render json: names, status: :ok
    # end

    private

    def tee_time_params
        params.permit(:golf_course, :location, :number_of_holes, :time, :user_id, :date, :open_spots)
    end

end
