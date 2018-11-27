class Recipe

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def recipe_cards
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def users
    recipe_cards.map do |card|
      card.user
    end
  end

def self.most_popular
  RecipeCard.all.map do |card|
    card.recipe
  end.each_with_object(Hash.new(0)) {
      |m,h| h[m] += 1
    }.sort_by {
      |k,v| v
    }.last[0]
end

def recipe_ingredients
  RecipeIngredient.all.select do |ri|
    ri.recipe == self
  end

end

def ingredients
  recipe_ingredients.map do |recipe|
    recipe.ingredient
  end
end

def allergens
  allergen_ingredients = Allergen.all.map do |allergen|
    allergen.ingredient
  end
  allergen_ingredients & ingredients
end

def add_ingredients(ingredients_array)
  ingredients_array.each do |ingredient|
    Ingredient.new(ingredient)
    RecipeIngredient.new(self, ingredient)
  end
end


end
