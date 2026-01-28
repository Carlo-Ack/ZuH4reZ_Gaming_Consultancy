class CreateBfrandomizers < ActiveRecord::Migration[7.1]
  def change
    create_table :bfrandomizers do |t|
      t.string :name

      t.timestamps
    end
  end
end
