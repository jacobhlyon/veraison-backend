class Wine < ApplicationRecord
	has_many :users, through: :wine_scores
end
