class RecipeCard

  @@all = []

  def self.all
    @@all
  end

  attr_reader :date
  attr_accessor :rating, :user, :recipe

  def initialize(date, rating, user, recipe)
    @date = date
    @rating = rating
    @user = user
    @recipe = recipe

    @@all << self
  end


end
