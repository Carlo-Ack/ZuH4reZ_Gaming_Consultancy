puts "Cleaning DB"
Consultation.destroy_all
User.delete_all
Bfrandomizer.destroy_all

puts "Creating Admin"
admin = User.create!(email: "zuh4rez_gaming_consultancy@gmx.de", password: "password")
puts "Creating Test-User"
test_user = User.create!(email: "Carlo@Carlo.com", password: "password")

puts "Creating Test-Consultation"
Consultation.create!(user: test_user, name: "RPG")

puts "Creating Test Bfrandomizer"
Bfrandomizer.create!(user: test_user, name: "Try Nr. 1", player_class: "Support", class_specialization: "Push", primary_weapon: "SVK", secondary_weapon: "Revolver", gadget_one: "Defi", gadget_two: "Launcher")
Bfrandomizer.create!(user: test_user, name: "Try Nr. 2", player_class: "Enginner", class_specialization: "Repair", primary_weapon: "DRS", secondary_weapon: "Five-Seven", gadget_one: "Cover", gadget_two: "Anti-Grenade-Device")

puts "Finished creating Seeds with #{User.count} Users, #{Consultation.count} Consultation and #{Bfrandomizer.count} Randomizers."
