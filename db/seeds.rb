# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "destroying all"
User.destroy_all
Event.destroy_all
Category.destroy_all

puts "Creating users"
user1 = User.create(email: "santi@gmail.com", password: "123456", full_name: "santi")
file = URI.open("https://images.unsplash.com/photo-1611774119019-461b5dbd3ae8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60") # use cloudinary url
user1 = user1.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

user2 = User.create(email: "martin@gmail.com", password: "123456", full_name: "martin")
file = URI.open("https://images.unsplash.com/photo-1614289371518-722f2615943d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60") # use cloudinary url
user2 = user2.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

user3 = User.create(email: "glenn@gmail.com", password: "123456", full_name: "glenn")
file = URI.open("https://images.unsplash.com/photo-1584999734482-0361aecad844?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60") # use cloudinary url
user3 = user3.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

puts "Creating categories"

Category.create(name: "Outdoor", picture: "https://images.unsplash.com/photo-1539635278303-d4002c07eae3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80")
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

Category.create(name: "Study groups", picture: "https://images.unsplash.com/photo-1521737604893-d14cc237f11d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=763&q=80")
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

Category.create(name: "Sports", picture: "https://images.unsplash.com/photo-1607962837359-5e7e89f86776?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80" )
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

Category.create(name: "Hobbies", picture: "https://images.unsplash.com/photo-1621112904887-419379ce6824?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80")
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

Category.create(name: "Politics", picture: "https://images.unsplash.com/photo-1508766917616-d22f3f1eea14?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

Category.create(name: "Just fun", picture: "https://images.unsplash.com/photo-1583606784123-7c244f00d29c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")




puts "Creating events"

event1 = Event.create(user_id: User.find_by(email: "santi@gmail.com").id, category_id: Category.find_by(name: "Outdoor").id, date: Date.today , address: "gran vía 55, madrid", title: "Salidas a correr por la montaña", premium: false, description: "Este finde salimos a correr por la montaña. Traer comida, abrigo y ganas de compartir un buen momento"  )
file = URI.open("https://images.unsplash.com/photo-1506534067239-9e2fabb3a863?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
event1 = event1.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event2 = Event.create(user_id: User.find_by(email: "martin@gmail.com").id, category_id: Category.find_by(name: "Sports").id, date: Date.today , address: "gran vía 55, madrid", title: "Para los amantes del voley!", premium: false, description: "Si te gusta el voley playero, esta es la actividad para vos. Sumate!"  )
file = URI.open("https://images.unsplash.com/photo-1612872087720-bb876e2e67d1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=868&q=80") # use cloudinary url
event2 = event2.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event6 = Event.create(user_id: User.find_by(email: "glenn@gmail.com").id, category_id: Category.find_by(name: "Study groups").id, date: Date.today , address: "Barcelona, Catalunya, España", title: "Historia del arte", premium: false, description: "Hola!, somos un grupo de amigos que nos juntamos a estudiar historia del arte. Si te entusiasma, sos bienvenido!"  )
file = URI.open("https://images.unsplash.com/photo-1460518451285-97b6aa326961?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
event6 = event6.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event3 = Event.create(user_id: User.find_by(email: "glenn@gmail.com").id, category_id: Category.find_by(name: "Study groups").id, date: Date.today , address: "gran vía 55, madrid", title: "Grupo de estudio de Javascript", premium: false, description: "Hola!, somos un grupo de amigos que nos juntamos a estudiar javascript. Si te entusiasma, sos bienvenido!"  )
file = URI.open("https://images.unsplash.com/photo-1523240795612-9a054b0db644?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
event3 = event3.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event5 = Event.create(user_id: User.find_by(email: "martin@gmail.com").id, category_id: Category.find_by(name: "Sports").id, date: Date.today , address: "Barcelona, Catalunya, España", title: "Football 7", premium: false, description: "Si te gusta el football, este fin de semana es la actividad para vos. Sumate!"  )
file = URI.open("https://images.unsplash.com/photo-1603291697926-7e5822ed1ac5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80") # use cloudinary url
event5 = event5.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event4 = Event.create(user_id: User.find_by(email: "santi@gmail.com").id, category_id: Category.find_by(name: "Outdoor").id, date: Date.today , address: "Barcelona, Catalunya, España", title: "Acampamos en la montaña", premium: false, description: "Este finde salimos a correr por la montaña. Traer comida, abrigo y ganas de compartir un buen momento"  )
file = URI.open("https://images.unsplash.com/photo-1534246357846-40b500934c14?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80") # use cloudinary url
event4 = event4.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")




