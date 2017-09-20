class CreateNoseScores < ActiveRecord::Migration[5.1]
  def change
    create_table :nose_scores do |t|
      t.integer :wine_score_id
      t.boolean :clean
      t.string :faults
      t.string :other_faults
      t.string :intensity
      t.string :age
      t.string :fruit
      t.string :fruit_character
      t.string :fruit_description
      t.string :non_fruit
      t.string :organic_earth
      t.string :inorganic_earth
      t.boolean :wood
      t.string :wood_type
      t.string :wood_age
      t.string :additional_notes

      t.timestamps
    end
  end
end
