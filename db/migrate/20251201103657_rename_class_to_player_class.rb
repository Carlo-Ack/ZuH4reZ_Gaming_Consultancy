class RenameClassToPlayerClass < ActiveRecord::Migration[7.1]
  def change
    rename_column :bfrandomizers, :class, :player_class
  end
end
