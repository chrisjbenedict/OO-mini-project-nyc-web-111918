class User

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
    card.user == self
  end
end

def recipes
  recipe_cards.map do |card|
    card.recipe
  end
end

def add_recipe_card(date, rating, recipe)
  RecipeCard.new(date,rating, self, recipe)
end

def declare_allergen(ingredient)
  Allergen.new(ingredient, self)
end

def allergens_arrays
  Allergen.all.select do |allergen|
    allergen.user == self
  end
end

def allergens
  allergens_arrays.map do |allergen|
    allergen.ingredient
  end
end

def top_three_recipes
  reversed_cards = recipe_cards.sort_by { |card|
    card.rating
  }.reverse
  reversed_cards[0..2]
end

def most_recent_recipe
  sorted_by_date = recipe_cards.sort_by { |card|
    card.date
  }
  sorted_by_date.last
end

# 1. use allergens method to get user's allergens,
# 2.
def safe_recipes
  ing = Recipe.all.each do |recipe|
    recipe.ingredients
  end
  !(ing & allergens).empty?
end


end #end of user class
