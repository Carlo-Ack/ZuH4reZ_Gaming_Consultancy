class RemoveUserIdFromBfrandomizers < ActiveRecord::Migration[7.1]
  def change
    remove_column :bfrandomizers, :user_id, :integer
  end
end
