# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

def calc_category
  categories = %w(chinese italian japanese french belgian)
  random = rand(0..4)
  return categories[random]
end

10.times do 
  new_restaurant = Restaurant.new(name: Faker::Ancient.hero, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone, category: calc_category)
  new_restaurant.save
end