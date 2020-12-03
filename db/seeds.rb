# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating"
Restaurant.destroy_all
User.destroy_all


User.create!(email: "flavio@gmail.com", password: "123456")
User.create!(email: "caique@gmail.com", password: "123456")


restaurant1 = Restaurant.new(name: "Carretão", user: User.all.sample)
restaurant2 = Restaurant.new(name: "Mcdonalds", user: User.all.sample)
restaurant3 = Restaurant.new(name: "Bob's", user: User.all.sample)
restaurant4 = Restaurant.new(name: "Burguer King", user: User.all.sample)

restaurant1.save
restaurant2.save
restaurant3.save
restaurant4.save

puts "Created"