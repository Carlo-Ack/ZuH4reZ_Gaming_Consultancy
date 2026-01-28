class AddWeaponsEtcToBfrandomizers < ActiveRecord::Migration[7.1]
  def change
    add_column :bfrandomizers, :class, :string
    add_column :bfrandomizers, :class_specialization, :string
    add_column :bfrandomizers, :primary_weapon, :string
    add_column :bfrandomizers, :secondary_weapon, :string
    add_column :bfrandomizers, :gadget_one, :string
    add_column :bfrandomizers, :gadget_two, :string
  end
end
