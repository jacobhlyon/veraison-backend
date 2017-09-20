class CreateWineScores < ActiveRecord::Migration[5.1]
  def change
    create_table :wine_scores do |t|
      t.integer :user_id
      t.integer :wine_id
      t.integer :user_score

      t.timestamps
    end
  end
end
