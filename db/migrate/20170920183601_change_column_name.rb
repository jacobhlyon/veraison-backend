class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :wines, :type, :wine_color
  end
end
