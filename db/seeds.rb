puts "🌱 Seeding spices..."

# Seed your database here

puts "Deleting departments/employees data..."
House.destroy_all
Attendant.destroy_all

puts "Creating houses..."
tims_family = House.create(name: "tims family")
IT_firm = House.create(name: "IT firm")
canes_farm = House.create(name: "canes farm")
jakes_house = House.create(name: "jakes house")

puts "Creating attendants..."
allan_kush = Attendant.create(username: "Allan Kush", salary:"Salary KSH 50000",job:"Gardener", image:"https://www.freeiconspng.com/thumbs/human-icon-png/person-outline-icon-png-person-outline-icon-png-person-17.png")
jane_lee = Attendant.create(username: "Jane Lee", salary:"Salary KSH 30000", job:"Cook", image:"https://www.freeiconspng.com/thumbs/human-icon-png/person-outline-icon-png-person-outline-icon-png-person-17.png" )
cindy_amor = Attendant.create(username: "Cindy Amor", salary:"Salary KSH 20000", job:"Nanny", image:"https://www.freeiconspng.com/thumbs/human-icon-png/person-outline-icon-png-person-outline-icon-png-person-17.png")
cathy_lorna = Attendant.create(username: "Cathy Lorna", salary:"Salary KSH 60000", job:"Cleaner", image:"https://www.freeiconspng.com/thumbs/human-icon-png/person-outline-icon-png-person-outline-icon-png-person-17.png")

puts "Creating roles..."

Role.create( salary: "Salary KSH 50000",username: "Allan", house_id:canes_farm.id, attendant_id:allan_kush.id)
Role.create( salary: "Salary KSH 30000",username: "Jane", house_id:tims_family.id, attendant_id:jane_lee.id)
Role.create(salary: "Salary KSH 40000",username: "Cindy", house_id:jakes_house.id, attendant_id:cindy_amor.id)
Role.create(salary: "Salary KSH 60000",username: "Cathy", house_id:IT_firm.id, attendant_id:cathy_lorna.id)


puts "✅ Done seeding!"
