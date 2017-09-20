class Wine < ApplicationRecord
	has_many :users, through: :wine_scores
	has_many :wine_scores
	
	has_many :nose_scores, through: :wine_scores
	has_many :sight_scores, through: :wine_scores
	has_many :palate_scores, through: :wine_scores
end
