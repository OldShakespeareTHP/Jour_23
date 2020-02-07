# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# 50.times do
#   City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
# end

#Je creais 300 dogs, et 300 dogsitters, donc en moyene 6 de chaque par ville.

# 300.times do
#   Dog.create(name: Faker::Creature::Dog.name, specie: Faker::Creature::Dog.breed, city: City.find_by(id: rand(1..50)))
#   Dogsitter.create(name: Faker::Name.name, age: rand(16..90), city: City.find_by(id: rand(1..50)))
# end

#Je creais 200 promenades (strolls), avec le dogsitter et le dog aleatoires,  
# 200.times do
#   temp_dogsitter = Dogsitter.find_by(id: rand(1..300))
#   temp_dog = Dog.find_by(id: rand(1..300))
#   Stroll.create(dog: temp_dog, dogsitter: temp_dogsitter)
# end
