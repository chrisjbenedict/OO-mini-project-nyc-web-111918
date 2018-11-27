class Allergen

  @@all = []

  def self.all
    @@all
  end

  attr_reader :ingredient
  attr_accessor :user

  def initialize(ingredient, user)
    @ingredient = ingredient
    @user = user

    @@all << self
  end

end
