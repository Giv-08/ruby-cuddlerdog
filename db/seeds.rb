require "cloudinary"
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
Dog.destroy_all

# Dog.create(name: "max", breed: "poodle", description: "friendly", price: "40000", user_id: 1, image_url: `https://res.cloudinary.com/dlpz9g0qh/image/upload/v1709675056/american_eskimo_vbessa.jpg`)
# Dog.save
