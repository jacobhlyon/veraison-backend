class User < ApplicationRecord
	has_secure_password

	has_many :wines, through: :wine_scores
end
