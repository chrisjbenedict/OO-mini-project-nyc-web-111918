class Ingredient

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name #:recipe

  def initialize(name) #recipe)
    @name = name
    #@recipe = recipe

    @@all << self
  end

  def self.most_common_allergen
      Allergen.all.map do |allergen|
        allergen.ingredient
      end.each_with_object(Hash.new(0)) {
          |m,h| h[m] += 1
        }.sort_by {
          |k,v| v
        }.last[0]
  end



end #end of Ingredient class
