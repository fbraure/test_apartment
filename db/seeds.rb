puts "START SEED"
puts ">> Current Tenant: #{Apartment::Tenant.current}"
puts ">> Tenants already in: #{Apartment.tenant_names}"
Restaurant.destroy_all
User.destroy_all
# Apartment::Tenant.reset  => Non, Renvoie sur "public" alors que chaque tenant est seedé
begin
  Apartment.tenant_names.each  do |tenant|
    Apartment::Tenant.create(tenant) # unless Apartment.tenant_names.include?(tenant)
  end
end

User.create!(email: 'admin@example.com', password: 'azerty', password_confirmation: 'azerty', admin: true)

4.times do |i|
  Restaurant.create(name: "Restaurant #{i+1}")
end

puts "END SEED"
