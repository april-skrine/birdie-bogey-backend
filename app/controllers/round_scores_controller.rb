class RoundScoresController < ApplicationController

    def index
        render json: RoundScore.all, status: :ok
    end

    def show
        render json: RoundScore.find!(params[:id]), status: :ok
    end

    def create
        user_quiz = RoundScore.create!()
        render json: user_quiz, status: :created
    end

end
