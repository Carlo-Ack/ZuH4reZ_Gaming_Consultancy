class AddUserIdToConsultation < ActiveRecord::Migration[7.1]
  def change
    add_column :consultations, :user_id, :integer
  end
end
