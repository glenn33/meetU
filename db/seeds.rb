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

categories = ["Aire libre", "Deportes", "Grupos de estudio", "Hobbies"]

categories.each do |category|
  Category.create(name: category)
end

puts "Creating events"

event1 = Event.create(user_id: User.find_by(email: "santi@gmail.com").id, category_id: Category.find_by(name: "Aire libre").id, date: Date.today , address: "gran vía 55, madrid", title: "Salidas a correr por la montaña", premium: false, description: "Este finde salimos a correr por la montaña. Traer comida, abrigo y ganas de compartir un buen momento"  )
file = URI.open("https://images.unsplash.com/photo-1506534067239-9e2fabb3a863?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
event1 = event1.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")

event2 = Event.create(user_id: User.find_by(email: "martin@gmail.com").id, category_id: Category.find_by(name: "Deportes").id, date: Date.today , address: "gran vía 55, madrid", title: "Para los amantes del voley!", premium: false, description: "Si te gusta el voley playero, esta es la actividad para vos. Sumate!"  )
file = URI.open("https://images.unsplash.com/photo-1612872087720-bb876e2e67d1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=868&q=80") # use cloudinary url
event2 = event2.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")


event3 = Event.create(user_id: User.find_by(email: "glenn@gmail.com").id, category_id: Category.find_by(name: "Grupos de estudio").id, date: Date.today , address: "gran vía 55, madrid", title: "Grupo de estudio de Javascript", premium: false, description: "Hola!, somos un grupo de amigos que nos juntamos a estudiar javascript. Si te entusiasma, sos bienvenido!"  )
file = URI.open("https://images.unsplash.com/photo-1523240795612-9a054b0db644?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80") # use cloudinary url
event3 = event3.pictures.attach(io: file, filename: "face.jpg", content_type: "image/jpg")





# _table "events", force: :cascade do |t|
#   t.bigint "category_id", null: false
#   t.bigint "user_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.date "date"
#   t.string "address"
#   t.string "title"
#   t.text "description"
#   t.string "pictures"
#   t.boolean "premium"
#   t.index ["category_id"], name: "index_events_on_category_id"
#   t.index ["user_id"], name: "index_events_on_user_id"