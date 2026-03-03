# Seed saplings for initial Database

# Yml files contain gamedata for randomizers to work
require "yaml"

# Cleaning previous records form Database
puts "Cleaning DB"
Consultation.destroy_all
User.delete_all
Bfrandomizer.destroy_all

# Creating Admin and Test-User
puts "Creating Admin"
admin = User.create!(email: "zuh4rez_gaming_consultancy@gmx.de", password: "password")
puts "Creating Test-User"
test_user = User.create!(email: "Carlo@Carlo.com", password: "password")

# Creating Test/Initial Consultation Data to be shown to Admin/Test-User
puts "Creating Test-Consultation"
Consultation.create!(user: test_user, name: "RPG")

# Creating Test/Initial Randomizer records to be shown to Admin/Test-User
puts "Creating Data for Bfrandomizer"
Bfrandomizer.create!(name: "Try Nr. 1", player_class: "Support", class_specialization: "Push", primary_weapon: "SVK", secondary_weapon: "Revolver", gadget_one: "Defi", gadget_two: "Launcher")
Bfrandomizer.create!(name: "Try Nr. 2", player_class: "Enginner", class_specialization: "Repair", primary_weapon: "DRS", secondary_weapon: "Five-Seven", gadget_one: "Cover", gadget_two: "Anti-Grenade-Device")

# Adding and selecting the Yml files that contain Gamedata
player_class_file_path = Rails.root.join("config", "gamedata", "player_classes.yml")
player_class_data = YAML.load_file(player_class_file_path)

player_class_data["player_classes"].each do |player_class|
  Bfrandomizer.find_or_create_by!(
    player_class: player_class["name"]
  ) do |pc|
    pc.description = player_class["description"]
  end
end

class_specialization_file_path = Rails.root.join("config", "gamedata", "class_specialization.yml")
class_specialization_data = YAML.load_file(class_specialization_file_path)

class_specialization_data["class_specializations"].each do |class_specialization|
  Bfrandomizer.find_or_create_by!(
    class_specialization: class_specialization["name"]
  ) do |cs|
    cs.description = class_specialization["description"]
  end
end

primary_weapon_file_path = Rails.root.join("config", "gamedata", "primary_weapon.yml")
primary_weapon_data = YAML.load_file(primary_weapon_file_path)

primary_weapon_data["primary_weapons"].each do |primary_weapon|
  Bfrandomizer.find_or_create_by!(
    primary_weapon: primary_weapon["name"]
  ) do |pw|
    pw.description = primary_weapon["description"]
  end
end

secondary_weapon_file_path = Rails.root.join("config", "gamedata", "secondary_weapon.yml")
secondary_weapon_data = YAML.load_file(secondary_weapon_file_path)

secondary_weapon_data["secondary_weapons"].each do |secondary_weapon|
  Bfrandomizer.find_or_create_by!(
    secondary_weapon: secondary_weapon["name"]
  ) do |sw|
    sw.description = secondary_weapon["description"]
  end
end

gadget_one_file_path = Rails.root.join("config", "gamedata", "gadget_one.yml")
gadget_one_data = YAML.load_file(gadget_one_file_path)

gadget_one_data["gadget_ones"].each do |gadget_one|
  Bfrandomizer.find_or_create_by!(
    gadget_one: gadget_one["name"]
  ) do |go|
    go.description = gadget_one["description"]
  end
end

gadget_two_file_path = Rails.root.join("config", "gamedata", "gadget_two.yml")
gadget_two_data = YAML.load_file(gadget_two_file_path)

gadget_two_data["gadget_twos"].each do |gadget_two|
  Bfrandomizer.find_or_create_by!(
    gadget_two: gadget_two["name"]
  ) do |gt|
    gt.description = gadget_two["description"]
  end
end

# Summary Display
puts "Finished creating Seeds with #{User.count} Users, #{Consultation.count} Consultation and #{Bfrandomizer.count} Randomizers."