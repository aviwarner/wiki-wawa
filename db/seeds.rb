# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'random_data'
require 'faker'

10.times do
  User.create!(
    email: Faker::Internet.unique.email,
    password: "password",
    password_confirmation: "password"
  )
end

users = User.all

50.times do
   Wiki.create!(
     title:  Faker::VentureBros.character,
     body:   Faker::VentureBros.quote,
     private: Faker::Boolean.boolean,
     user: users.sample
   )
 end

 wikis = Wiki.all


puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
