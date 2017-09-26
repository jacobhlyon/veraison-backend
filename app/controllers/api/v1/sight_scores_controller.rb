class Api::V1::SightScoresController < ApplicationController

	def index
		sightScores = SightScore.all

		render json: sightScores
	end

	def create
		sightScore = SightScore.create(sight_score_params)

		render json: sightScore
	end

	private

		def sight_score_params
			params.require(:data).permit(:wine_score_id, :clarity, :concentration, 
				:color, :secondary_color, :rim_variation, :staining, :tearing, :gas_evidence)
		end

end