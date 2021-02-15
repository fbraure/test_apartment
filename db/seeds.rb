# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "START SEED"
User.destroy_all
User.create!(email: 'admin@example.com', password: 'azerty', password_confirmation: 'azerty', admin: true)
user1 = User.create!(email: 'florent@site1.com', password: 'azerty', password_confirmation: 'azerty', )
user2 = User.create!(email: 'florent@site2.com', password: 'azerty', password_confirmation: 'azerty', )

Restaurant.destroy_all
20.times do |i|
  Restaurant.create(name: "Restaurant #{i+1}", user: i.odd? ? user1 : user2, site:  user: i.odd? ? "user1" : "user2")
end
puts "END SEED"
