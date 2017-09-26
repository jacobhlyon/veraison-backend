class Api::V1::WineScoresController < ApplicationController

	def index
		wineScores = WineScore.all
		render json: wineScores
	end

	def create
		wineScore = WineScore.create(wine_score_params)

		render json: wineScore
	end


	private

		def wine_score_params
			params.require(:data).permit(:wine_id, :user_id, :user_score)
		end
end