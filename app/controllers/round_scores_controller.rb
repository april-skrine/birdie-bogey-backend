class RoundScoresController < ApplicationController

    def index
        render json: RoundScore.all, status: :ok
    end

    def show
        render json: RoundScore.where({user_id: params[:id]}), status: :ok
    end

    def create
        round_score = RoundScore.create!(round_params)
        render json: round_score, status: :created
    end

    private

    def round_params
        params.permit(:course, :eighteen_holes, :date, :total_strokes, :total_par, :total_score, :user_id)
    end

end
