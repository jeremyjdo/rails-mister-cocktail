# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts 'Creating Ingredient...'

json_ingredient = JSON.load(open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"))

list_ingredient = []

json_ingredient["drinks"].each do |ingredient|
  list_ingredient << { name: ingredient["strIngredient1"]}
end

Ingredient.create!(list_ingredient)

puts 'Finished!'




