# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
genre = ["action", "horreur", "comédie", "drame"]

10.times do
  Movie.create(
    name: Faker::Movie.title,
    year: Faker::Number.between(from: 1999, to: 2022),
    genre: genre.sample,
    sysnopsis: Faker::Movie.quote,
    director: Faker::Name.name
  )
end

puts "10 ont créé"