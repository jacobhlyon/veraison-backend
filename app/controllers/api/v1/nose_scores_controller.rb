class Api::V1::NoseScoresController < ApplicationController

	
	def index
		noseScores = NoseScore.all 

		render json: noseScores
	end

	def create
		noseScore = NoseScore.create(nose_score_params)

		render json: noseScore
	end

	private

		def nose_score_params
			params.require(:data).permit(:wine_score_id, :clean, :other_faults, :intensity, :age,  :fruit_description,
			:wood, :wood_type, :wood_age, :additional_notes, organic_earth: [], inorganic_earth: [], non_fruit: [], fruit: [], fruit_character: [], faults: [])
		end

end