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
user1 = User.create(email: "santi@gmail.com", password: "123456", full_name: "Santi")
file = URI.open("https://images.unsplash.com/photo-1611774119019-461b5dbd3ae8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60") # use cloudinary url
user1 = user1.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

user2 = User.create(email: "martin@gmail.com", password: "123456", full_name: "Martin")
file = URI.open("https://images.unsplash.com/photo-1614289371518-722f2615943d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60") # use cloudinary url
user2 = user2.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

user3 = User.create(email: "glenn@gmail.com", password: "123456", full_name: "Glenn")
file = URI.open("https://images.unsplash.com/photo-1584999734482-0361aecad844?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60") # use cloudinary url
user3 = user3.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

user4 = User.create(email: "euge@gmail.com", password: "123456", full_name: "Eugenia")
file = URI.open("https://images.unsplash.com/photo-1619895862022-09114b41f16f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
user4 = user4.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

user5 = User.create(email: "rocio@gmail.com", password: "123456", full_name: "Rocio")
file = URI.open("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
user5 = user5.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

user6 = User.create(email: "dai@gmail.com", password: "123456", full_name: "Daiana")
file = URI.open("https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80") # use cloudinary url
user6 = user6.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

user7 = User.create(email: "miguel@gmail.com", password: "123456", full_name: "Miguel")
file = URI.open("https://images.unsplash.com/photo-1613145997970-db84a7975fbb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=358&q=80") # use cloudinary url
user7 = user7.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

user8 = User.create(email: "pedro@gmail.com", password: "123456", full_name: "Pedro")
file = URI.open("https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80") # use cloudinary url
user8 = user8.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

user9 = User.create(email: "gustavo@gmail.com", password: "123456", full_name: "Gustavo")
file = URI.open("https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80") # use cloudinary url
user9 = user9.profile_picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

puts "Creating categories"

Category.create(name: "Outdoor", picture: "https://images.unsplash.com/photo-1499803270242-467f7311582d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80")
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

Category.create(name: "Study groups", picture: "https://images.unsplash.com/photo-1525130413817-d45c1d127c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80")
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

Category.create(name: "Sports", picture: "https://images.unsplash.com/photo-1598399615261-adafbbb044fc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80" )
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

Category.create(name: "Hobbies", picture: "https://images.unsplash.com/photo-1578667343051-ff8c81d04408?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

Category.create(name: "Politics", picture: "https://images.unsplash.com/photo-1558403194-611308249627?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

Category.create(name: "Just fun", picture: "https://images.unsplash.com/photo-1583606784123-7c244f00d29c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
# file = URI.open() # use cloudinary url
# category1 = category1.picture.attach(io: file, filename: "face.jpg", content_type: "image/jpg")




puts "Creating events"

event1 = Event.create(user_id: User.find_by(email: "santi@gmail.com").id, category_id: Category.find_by(name: "Outdoor").id, date: Date.today , address: "Carrer de l'Agricultura, 260, 08020 Barcelona, España", title: "Salidas a correr por la montaña", premium: false, description: "Este finde salimos a correr por la montaña. Traer comida, abrigo y ganas de compartir un buen momento"  )
file = URI.open("https://images.unsplash.com/photo-1506534067239-9e2fabb3a863?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
event1 = event1.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event12 = Event.create(user_id: User.find_by(email: "rocio@gmail.com").id, category_id: Category.find_by(name: "Outdoor").id, date: Date.today , address: "C. d'Arístides Maillol, 12, 08028 Barcelona, España", title: "Finde de aire fresco", premium: false, description: "Te gustaría acampar en la montaña. Traer comida, abrigo y ganas de compartir un buen momento"  )
file = URI.open("https://images.unsplash.com/photo-1503789597747-41de608aca69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80") # use cloudinary url
event12 = event12.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")


event2 = Event.create(user_id: User.find_by(email: "martin@gmail.com").id, category_id: Category.find_by(name: "Sports").id, date: Date.today , address: "Carrer de l'Agricultura, 360, 08020 Barcelona, España", title: "Para los amantes del voley!", premium: false, description: "Si te gusta el voley playero, esta es la actividad para vos. Sumate!"  )
file = URI.open("https://images.unsplash.com/photo-1612872087720-bb876e2e67d1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=868&q=80") # use cloudinary url
event2 = event2.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event6 = Event.create(user_id: User.find_by(email: "glenn@gmail.com").id, category_id: Category.find_by(name: "Study groups").id, date: Date.today , address: "Barcelona, Catalunya, España", title: "Historia del arte", premium: false, description: "Hola!, somos un grupo de amigos que nos juntamos a estudiar historia del arte. Si te entusiasma, sos bienvenido!"  )
file = URI.open("https://images.unsplash.com/photo-1460518451285-97b6aa326961?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
event6 = event6.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event3 = Event.create(user_id: User.find_by(email: "glenn@gmail.com").id, category_id: Category.find_by(name: "Study groups").id, date: Date.today , address: "Calle de Bailén, s/n, 28071 Madrid, España", title: "Grupo de estudio de Javascript", premium: false, description: "Hola!, somos un grupo de amigos que nos juntamos a estudiar javascript. Si te entusiasma, sos bienvenido!"  )
file = URI.open("https://images.unsplash.com/photo-1523240795612-9a054b0db644?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
event3 = event3.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event8 = Event.create(user_id: User.find_by(email: "rocio@gmail.com").id, category_id: Category.find_by(name: "Sports").id, date: Date.today , address: "Calle del Conde de Peñalver, 14, 28006 Madrid, España", title: "Hockey sobre cesped mixto", premium: false, description: "Reclutando gente para armar partidos semanales. Es mixto, todo el mundo bienvenido."  )
file = URI.open("https://images.unsplash.com/photo-1573459635481-85e9012c05c6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80") # use cloudinary url
event8 = event8.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")


event5 = Event.create(user_id: User.find_by(email: "martin@gmail.com").id, category_id: Category.find_by(name: "Sports").id, date: Date.today , address: "Carrer de Casanova, 42, 08011 Barcelona, España", title: "Football 7", premium: false, description: "Si te gusta el football, este fin de semana es la actividad para vos. Sumate!"  )
file = URI.open("https://images.unsplash.com/photo-1603291697926-7e5822ed1ac5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80") # use cloudinary url
event5 = event5.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event11 = Event.create(user_id: User.find_by(email: "dai@gmail.com").id, category_id: Category.find_by(name: "Sports").id, date: Date.today , address: "Pla de la Seu, s/n, 08002 Barcelona, España", title: "Baskeball con amigos", premium: false, description: "Hola a todos, estoy juntando gente para organizar un partido de basketball. Si te gusta, te esperamos"  )
file = URI.open("https://images.unsplash.com/photo-1525918779320-0ca02e9a8b6a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
event11 = event11.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")


event4 = Event.create(user_id: User.find_by(email: "santi@gmail.com").id, category_id: Category.find_by(name: "Outdoor").id, date: Date.today , address: "Av. del Paral·lel, 159, 08004 Barcelona, España", title: "Acampamos en la montaña", premium: false, description: "Este finde salimos a correr por la montaña. Traer comida, abrigo y ganas de compartir un buen momento"  )
file = URI.open("https://images.unsplash.com/photo-1534246357846-40b500934c14?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80") # use cloudinary url
event4 = event4.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")


event7 = Event.create(user_id: User.find_by(email: "euge@gmail.com").id, category_id: Category.find_by(name: "Outdoor").id, date: Date.today , address: "Paseo de las Delicias, 61, 28045 Madrid, España", title: "Café y montañas", premium: false, description: "Este finde paseamos por la montaña acompañados de un buen café. Sumate"  )
file = URI.open("https://images.unsplash.com/photo-1515696955266-4f67e13219e8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80") # use cloudinary url
event7 = event7.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")



event9 = Event.create(user_id: User.find_by(email: "dai@gmail.com").id, category_id: Category.find_by(name: "Study groups").id, date: Date.today , address: "Carrer de Mallorca, 401, 08013 Barcelona, España", title: "Matemáticas para dummies", premium: false, description: "Hola!, somos un grupo de amigos que nos juntamos a aprender matemáticas. Si te entusiasma, sos bienvenido!"  )
file = URI.open("https://images.unsplash.com/photo-1520881363902-a0ff4e722963?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
event9 = event9.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event10 = Event.create(user_id: User.find_by(email: "euge@gmail.com").id, category_id: Category.find_by(name: "Study groups").id, date: Date.today , address: "gran vía 955, madrid", title: "Greografía y bollos", premium: false, description: "Todas las semanas estudiamos una ciudad europea, acompañados de los bollos más ricos de la ciudad. Te esperamos."  )
file = URI.open("https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80") # use cloudinary url
event10 = event10.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")






