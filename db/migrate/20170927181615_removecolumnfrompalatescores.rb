class Removecolumnfrompalatescores < ActiveRecord::Migration[5.1]
  def change
  	remove_column :palate_scores, :fruit, :string
  	remove_column :palate_scores, :fruit_character, :string
  	remove_column :palate_scores, :non_fruit, :string
  	remove_column :palate_scores, :organic_earth, :string
  	remove_column :palate_scores, :inorganic_earth, :string
  end

end
