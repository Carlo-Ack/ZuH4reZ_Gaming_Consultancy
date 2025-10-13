# Example:
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning DB"
Consultation.destroy_all
User.delete_all

puts "Creating Admin"
User.create!(email: "zuh4rez_gaming_consultancy@gmx.de", password: "password")
puts "Creating Test-User"
User.create!(email: "Carlo@Carlo.com", password: "password")

puts "Creating Test-Consultation"
# Problem is no association with user - may be missing in schema.rb
Consultation.create!(user_id: 2, name: "RPG")

puts "Finished creating Seeds with #{User.count} Users and #{Consultation.count} Consultation."
