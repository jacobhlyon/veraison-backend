class Change < ActiveRecord::Migration[5.1]
  def change
  	remove_column :nose_scores, :faults, :string
  	remove_column :nose_scores, :fruit, :string
  	remove_column :nose_scores, :fruit_character, :string
  	remove_column :nose_scores, :non_fruit, :string
  	remove_column :nose_scores, :organic_earth, :string
  	remove_column :nose_scores, :inorganic_earth, :string
  end

end
