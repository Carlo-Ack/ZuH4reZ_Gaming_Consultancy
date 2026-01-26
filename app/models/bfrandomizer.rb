class Bfrandomizer
  require "yaml"
   # belongs_to :user, optional: true

  class BfrandomizerResult
      attr_reader :player_class, :class_specialization, :primary_weapon,
                  :secondary_weapon, :gadget_one, :gadget_two

      def initialize(attrs)
        @player_class = attrs[:player_class]
        @class_specialization = attrs[:class_specialization]
        @primary_weapon = attrs[:primary_weapon]
        @secondary_weapon = attrs[:secondary_weapon]
        @gadget_one = attrs[:gadget_one]
        @gadget_two = attrs[:gadget_two]
      end
    end

 DATA_FILE_PATH = Rails.root.join("config", "gamedata")
 
 def self.data
    @data ||= Dir[DATA_FILE_PATH.join("*.yml")].each_with_object({}) do |file, hash|
      key = File.basename(file, ".yml")
      hash[key] = YAML.load_file(file)
    end
  end

 def self.random
  player_class = data["player_classes"].sample

  BfrandomizerResult.new(
    player_class: player_class,
    class_specialization: data["class_specialization"][player_class]&.sample,
    primary_weapon: data["primary_weapon"].sample,
    secondary_weapon: data["secondary_weapon"].sample,
    gadget_one: data["gadget_one"].sample,
    gadget_two: data["gadget_two"].sample
  )
 end
end
