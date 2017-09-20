class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :vintage
      t.string :varietal
      t.boolean :blend
      t.string :type
      t.string :image
      t.string :winery
      t.integer :snooth_rank
      t.string :region

      t.timestamps
    end
  end
end
