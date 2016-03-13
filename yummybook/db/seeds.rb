# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(username: "Pamela", email: "pamela@aol.com",password_digest: "password")
Recipe.create!(name: "Pasta carbonara", description: "Boiled water", ingredients: "Pasta",instructions: "Boiled water, for 30 minutes",user_id: 1, category_id: 1)
Recipe.create!(name: "Chilaquiles", description: "Delicious Mexican Breakfast", ingredients: "tortillas, tomatoes, chiles",instructions: "Boiled water, for 30 minutes",user_id: 2, category_id: 2)

Category.create!(name: "Italian", description: "Easy italian recipes")
Category.create!(name: "Mexican", description: "Real mexican dishes")
Category.create!(name: "Vegan", description: "Easy vegan recipes")
Category.create!(name: "Seafood", description: "Quick seafood dishes.")
Category.create!(name: "Thai food", description: "The best recipes from Thailand")


