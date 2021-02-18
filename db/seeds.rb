puts "START SEED"

Restaurant.destroy_all
User.destroy_all
Apartment::Tenant.reset

User.create!(email: 'admin@example.com', password: 'azerty', password_confirmation: 'azerty', admin: true)
user1 = User.create!(email: 'florent@site1.com', password: 'azerty', password_confirmation: 'azerty', )
user2 = User.create!(email: 'florent@site2.com', password: 'azerty', password_confirmation: 'azerty', )

4.times do |i|
  Restaurant.create(name: "Restaurant #{i+1}")
end

puts "END SEED"
