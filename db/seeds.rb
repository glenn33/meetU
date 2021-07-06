# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users"
User.create(email: "santi@gmail.com", password: "123456", full_name: "santi")
User.create(email: "martin@gmail.com", password: "123456", full_name: "martin")
User.create(email: "glenn@gmail.com", password: "123456", full_name: "glenn")

puts "Creating categories"

categories = ["Aire libre", "Deportes", "Grupos de estudio", "Hobbies"]

categories.each do |category|
  Category.create(name: category)
end

puts "Creating eventes"

10.times do
  Event.create(category_id: rand(1..4), date: Time.now , address: "gran vía 55, madrid", title: "Acá va el título", premium: false, description: "Acá va una hermosa descripción del evento a llevarse a cabo en el lugar y horario indicado por el creador del evento."  )
end