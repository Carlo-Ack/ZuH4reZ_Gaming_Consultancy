class CreateSurveys < ActiveRecord::Migration[7.1]
  def change
    create_table :surveys do |t|
      t.string :firstquestion

      t.timestamps
    end
  end
end
