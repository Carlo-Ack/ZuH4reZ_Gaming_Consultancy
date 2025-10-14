class AddForeignKeyConsultationToUser < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :consultations, :users
  end
end
