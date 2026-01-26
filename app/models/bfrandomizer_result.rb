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
