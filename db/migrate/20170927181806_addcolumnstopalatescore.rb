class Addcolumnstopalatescore < ActiveRecord::Migration[5.1]
  def change
  	add_column :palate_scores, :fruit, :text, array: true
  	add_column :palate_scores, :fruit_character, :text, array: true
  	add_column :palate_scores, :non_fruit, :text, array: true
  	add_column :palate_scores, :organic_earth, :text, array: true
  	add_column :palate_scores, :inorganic_earth, :text, array: true
  end
end
