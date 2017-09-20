class WineScore < ApplicationRecord
	belongs_to :user
	belongs_to :wine

	has_many :sight_scores
	has_many :nose_scores
	has_many :palate_scores
end
