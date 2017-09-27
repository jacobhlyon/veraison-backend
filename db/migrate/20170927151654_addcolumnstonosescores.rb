class Addcolumnstonosescores < ActiveRecord::Migration[5.1]
  def change
  	add_column :nose_scores, :faults, :text, array: true
  	add_column :nose_scores, :fruit, :text, array: true
  	add_column :nose_scores, :fruit_character, :text, array: true
  	add_column :nose_scores, :non_fruit, :text, array: true
  	add_column :nose_scores, :organic_earth, :text, array: true
  	add_column :nose_scores, :inorganic_earth, :text, array: true
  end
end
