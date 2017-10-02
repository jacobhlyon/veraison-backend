class Update < ActiveRecord::Migration[5.1]
  def change
  	change_column :palate_scores, :length, 'integer USING CAST(length AS integer)'
  	change_column :palate_scores, :complexity, 'integer USING CAST(complexity AS integer)'
  	change_column :palate_scores, :alcohol, 'integer USING CAST(alcohol AS integer)'
  	change_column :palate_scores, :acid, 'integer USING CAST(acid AS integer)'
  	change_column :palate_scores, :tannin, 'integer USING CAST(tannin AS integer)'
  end
end
