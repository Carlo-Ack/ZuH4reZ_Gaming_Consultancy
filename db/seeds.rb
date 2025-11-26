puts "Cleaning DB"
Consultation.destroy_all
User.delete_all
Bfrandomizer.destroy_all

puts "Creating Admin"
User.create!(email: "zuh4rez_gaming_consultancy@gmx.de", password: "password")
puts "Creating Test-User"
User.create!(email: "Carlo@Carlo.com", password: "password")

puts "Creating Test-Consultation"
Consultation.create!(user_id: 2, name: "RPG")

puts "Creating Test Bfrandomiizer"
Bfrandomizer.create!(name: "SVK")

puts "Finished creating Seeds with #{User.count} Users, #{Consultation.count} Consultation and #{Bfrandomizer.count} Randomizers."
