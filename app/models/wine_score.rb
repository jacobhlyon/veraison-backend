class WineScore < ApplicationRecord
	belongs_to :user
	belongs_to :wine

	has_many :sight_scores
	has_many :nose_scores
	has_many :palate_scores

	# make method on this model called Wine Score
	# Use the controller to call this method 

	def self.findReleventPalateScores(wine_id)
		all_scores = WineScore.where("wine_id = ?", wine_id).ids
		all_palate_scores = all_scores.map{ |id| PalateScore.find_by(wine_score_id: id)}
		aps = {
			acid: 0,
			tannin: 0,
			length: 0,
			complexity: 0,
			alcohol: 0
		}
		byebug
		if all_palate_scores != [nil]
			acid_total = all_palate_scores.map{|score| aps[:acid] = (aps[:acid] + score.acid.to_f) / all_scores.length}
			tannin_total = all_palate_scores.map{|score| aps[:tannin] = (aps[:tannin] + score.tannin.to_f) / all_scores.length}
			alcohol_total = all_palate_scores.map{|score| aps[:alcohol] = (aps[:alcohol] + score.alcohol.to_f) / all_scores.length}
			length_total = all_palate_scores.map{|score| aps[:length] = (aps[:length] + score.length.to_f) / all_scores.length}
			complexity_total = all_palate_scores.map{|score| aps[:complexity] = (aps[:complexity] + score.complexity.to_f) / all_scores.length}
		end

		byebug

		aps
	end

end
