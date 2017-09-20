class User < ApplicationRecord
	has_secure_password

	has_many :wine_scores
	has_many :wines, through: :wine_scores

	has_many :nose_scores, through: :wine_scores
	has_many :sight_scores, through: :wine_scores
	has_many :palate_scores, through: :wine_scores

end
