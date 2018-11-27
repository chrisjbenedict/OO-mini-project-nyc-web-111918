require 'pry'
require_relative '../config/environment.rb'


u1 = User.new("John")
u2 = User.new("Kim")
u3 = User.new("Frank")
u4 = User.new("Mary")

r1 = Recipe.new("Pho")
r2 = Recipe.new("Bacon Egg Cheese")
r3 = Recipe.new("Spaghetti")
r4 = Recipe.new("Tomato Soup")

i1 = Ingredient.new("Bacon")
i2 = Ingredient.new("Egg")
i3 = Ingredient.new("Cheese")
i4 = Ingredient.new("Noodles")
i5 = Ingredient.new("Noodles")
i6 = Ingredient.new("Beef")

ri1 = RecipeIngredient.new(r1, i4)
ri2 = RecipeIngredient.new(r1, i5)
ri3 = RecipeIngredient.new(r2, i1)
ri4 = RecipeIngredient.new(r2, i2)
ri5 = RecipeIngredient.new(r2, i3)
ri6 = RecipeIngredient.new(r3, i4)


a1 = Allergen.new(i2, u4)
a2 = Allergen.new(i1, u2)
a3 = Allergen.new(i5, u3)
a4 = Allergen.new(i4, u3)
a5 = Allergen.new(i2, u3)


#(date, rating, user, recipe)
rc1 = RecipeCard.new(2012, 9, u1, r1)
rc2 = RecipeCard.new(1994, 7, u2, r3)
rc3 = RecipeCard.new(1715, 4, u4, r3)
rc4 = RecipeCard.new(1715, 4, u1, r3)
rc5 = RecipeCard.new(1714, 2, u1, r2)
rc6 = RecipeCard.new(1920, 8, u1, r4)

binding.pry

puts "success"
