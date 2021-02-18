puts "START SEED"

Restaurant.destroy_all
User.destroy_all
Apartment::Tenant.reset

User.create!(email: 'admin@example.com', password: 'azerty', password_confirmation: 'azerty', admin: true)

4.times do |i|
  Restaurant.create(name: "Restaurant #{i+1}")
end

puts "END SEED"
