class AddDescriptionToBfrandomizers < ActiveRecord::Migration[7.1]
  def change
    add_column :bfrandomizers, :description, :string
  end
end
