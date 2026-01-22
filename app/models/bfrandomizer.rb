class Bfrandomizer < ApplicationRecord
  require "yaml"
  
  # belongs_to :user, optional: true

 data_file_path = Rails.root.join("db", "seeds", ["player_classes.yml", "class_specialization.yml"])
 
 def self.random
  order("Random()").first
end

data_class_data = YAML.load_file(player_class_file_path)

# Out of my head what should be working is:
# def self.random
# player_class.sample
# class_specialization.sample
# primary_weapon.sample etc...


end
