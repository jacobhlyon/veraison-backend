class CreatePalateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :palate_scores do |t|
      t.integer :wine_score_id
      t.string :sweetness
      t.string :fruit
      t.string :fruit_character
      t.string :fruit_description
      t.string :non_fruit
      t.string :organic_earth
      t.string :inorganic_earth
      t.boolean :wood
      t.string :wood_type
      t.string :wood_age
      t.boolean :bitter
      t.string :tannin
      t.string :acid
      t.string :alcohol
      t.string :body
      t.string :texture
      t.string :balance
      t.string :length
      t.string :complexity
      t.string :additional_notes

      t.timestamps
    end
  end
end
