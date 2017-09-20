class CreateSightScores < ActiveRecord::Migration[5.1]
  def change
    create_table :sight_scores do |t|
      t.integer :wine_score_id
      t.string :clarity
      t.string :concentration
      t.string :color
      t.string :secondary_color
      t.boolean :rim_variation
      t.string :staining
      t.string :tearing
      t.boolean :gas_evidence

      t.timestamps
    end
  end
end
