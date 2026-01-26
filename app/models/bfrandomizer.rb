class Bfrandomizer
  require "yaml"
  
  # belongs_to :user, optional: true

 data_file_path = Rails.root.join("config", "gamedata")
 
 def self.data
    @data ||= Dir[data_file_path.join("*.yml")].each_with_object({}) do |file, hash|
      key = File.basename(file, ".yml")
      hash[key] = YAML.load_file(file)
    end
  end

 def self.random
  player_class = data["player_classes"].sample

  BfrandomizerResult.new(
    player_class: player_class,
    class_specialization: data["class_specializations"][player_class]&.sample,
    primary_weapon: data["primary_weapons"].sample,
    secondary_weapon: data["secondary_weapons"].sample,
    gadget_one: data["gadgets"].sample,
    gadget_two: data["gadgets"].sample
  )
 end
end
