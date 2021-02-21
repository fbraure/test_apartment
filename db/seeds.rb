puts "START SEED"
puts ">> Current Tenant: #{Apartment::Tenant.current}"
puts ">> Tenants already in: #{Apartment.tenant_names}"
Restaurant.destroy_all
User.destroy_all
# Apartment::Tenant.reset
["site1", "site2"].each  do |tenant|
  Apartment::Tenant.create(tenant) unless Apartment.tenant_names.include?(tenant)
end

User.create!(email: 'admin@example.com', password: 'azerty', password_confirmation: 'azerty', admin: true)

4.times do |i|
  Restaurant.create(name: "Restaurant #{i+1}")
end

puts "END SEED"
