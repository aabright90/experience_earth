# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

# TODO: Write a seed to insert 100 posts in the database
puts 'Creating 12 fake posts'
12.times do
  experience = Experience.new(
    title: Faker::Verb.simple_present,
    contact: Faker::Internet.free_email,
    description:Faker::Quote.most_interesting_man_in_the_world,
    location:Faker::Address.country,
    price: rand(100..10000),
    experience_dates: '02/03/2020 - 03/03/2020'
  )
  experience.save!
end
puts "Done!"
