class WineScore < ApplicationRecord
	belongs_to :user
	belongs_to :wine

	has_many :sight_scores
	has_many :nose_scores
	has_many :palate_scores

	# make method on this model called Wine Score
	# Use the controller to call this method 

	def self.findReleventPalateScores(wine_id)
		all_scores = WineScore.where("wine_id = ?", wine_id)
		all_palate_scores = all_scores.map{ |score| score.palate_scores}
		all_palate_scores
	end

end
