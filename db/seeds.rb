# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# To delete all existing dogs listed

require "open-uri"
require 'faker'
require 'json'

User.destroy_all
Dog.destroy_all

5.times do
  users = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6, max_length: 10)
  )
  users.save!
end
5.times do
  breed = Faker::Creature::Dog.breed
  file = URI.open("http://dog.ceo/api/breeds/image/random/#{breed.parameterize}").read
  image = JSON.parse(file)
  dog = Dog.new(
    breed: breed.first,
    users_username: Faker::Internet.username(specifier: 5..10),
    name: Faker::Creature::Dog.name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price: Faker::Commerce.price,
    user: User.all.sample
  )
  file = URI.open(image["message"].first)
  dog.photo.attach(io: file, filename: "#{breed}.png", content_type: "image/png")
  dog.save!
end
