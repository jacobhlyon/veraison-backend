class Api::V1::WineScoresController < ApplicationController

	def index
		wineScores = WineScore.all
		render json: wineScores
	end

	def create
		wineScore = WineScore.create(wine_score_params)

		render json: wineScore
	end


	def scores
		wineScore = WineScore.find_by(wine_score_params)
		all_palate_scores = WineScore.findReleventPalateScores(wine_score_params[:wine_id])

		allScores = {}
		allScores[:palate_score] = wineScore.palate_scores
		allScores[:sight_score] = wineScore.sight_scores
		allScores[:nose_score] = wineScore.nose_scores
		allScores[:wine] = wineScore.wine

		byebug

		render json: {allScores: allScores, palate: all_palate_scores}
	end

	private

		def wine_score_params
			params.require(:data).permit(:wine_id, :user_id, :user_score)
		end
end