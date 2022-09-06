puts "🌱 Seeding spices..."

# Seed your database here

puts "Deleting departments/employees data..."
House.destroy_all
Attendant.destroy_all

puts "Creating houses..."
finance_section = House.create(name: "finance section")
IT_section = House.create(name: "IT section")
surbodinate_staff = House.create(name: "surbodinate staff")
general_staff = House.create(name: "general staff")

puts "Creating attendants..."
kate_kay = Attendant.create(username: "Allan Kush", salary:"Salary KSH 50000",job:"Cashier", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmo_Nuzkt2bB5GXUrDQWBeyX6t1TpnSAF0bxYHKjWa&s")
jay_lee = Attendant.create(username: "Jane Lee", salary:"Salary KSH 30000", job:"Facilitator", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmo_Nuzkt2bB5GXUrDQWBeyX6t1TpnSAF0bxYHKjWa&s" )
cindy_emma = Attendant.create(username: "Cindy Amor", salary:"Salary KSH 20000", job:"Cook", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmo_Nuzkt2bB5GXUrDQWBeyX6t1TpnSAF0bxYHKjWa&s")
prince_cha = Attendant.create(username: "Cathy Lorna", salary:"Salary KSH 60000", job:"Database Management", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmo_Nuzkt2bB5GXUrDQWBeyX6t1TpnSAF0bxYHKjWa&s")

puts "Creating roles..."

Role.create( salary: "Salary KSH 50000",username: "Allan", house_id:finance_section.id, attendant_id:allan_kush.id)
Role.create( salary: "Salary KSH 30000",username: "Jane", house_id:general_staff.id, attendant_id:jane_lee.id)
Role.create(salary: "Salary KSH 20000",username: "Cindy", house_id:surbodinate_staff.id, attendant_id:cindy_amor.id)
Role.create(salary: "Salary KSH 60000",username: "Cathy", house_id:IT_section.id, attendant_id:cathy_lorna.id)


puts "✅ Done seeding!"
