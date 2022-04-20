
class UserTeeTimesController < ApplicationController
    def create
        if UserTeeTime.where(tee_time_id: params[:tee_time_id]).pluck(:user_id).include?(params[:user_id])

            return render json: error, status: :unprocessable_entity
        end
        user_tee_time = UserTeeTime.create!(tee_time_params)
        tt = TeeTime.find(params[:tee_time_id])
        tt.update(open_spots: (tt.open_spots-1))
        render json: tt, adapter: nil, status: :ok
    end

    private
    
    def tee_time_params
        params.permit(:user_id, :tee_time_id)
    end
end
