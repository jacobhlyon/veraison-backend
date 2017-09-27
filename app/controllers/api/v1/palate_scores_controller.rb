class Api::V1::PalateScoresController < ApplicationController

	def index
		palateScores = PalateScore.all

		render json: palateScores
	end

	def create
		palateScore = PalateScore.create(palate_score_params)

		render json: palateScore
	end

	private

		def palate_score_params
			params.require(:data).permit(:wine_score_id, :sweetness,
				:fruit_description, :wood, :wood_type, :wood_age, :bitter, :tannin, :acid, :alcohol,
				:body, :texture, :balance, :length, :complexity, :additional_notes, non_fruit: [], organic_earth: [], inorganic_earth: [], fruit: [], fruit_character: [])
		end

end