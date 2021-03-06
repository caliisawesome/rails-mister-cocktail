# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'
require 'awesome_print'

booze = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

real_ingredients = JSON.parse(open(booze).read)
# ap real_ingredients

ings = real_ingredients["drinks"]

Ingredient.delete_all

ings.each do |ing|
  @ing = Ingredient.new(name: ing["strIngredient1"])
  @ing.save
end
