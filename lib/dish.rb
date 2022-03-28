require './lib/dish'

class Dish
  attr_reader :name, :category
  def initialize(name, category)
    @name = name
    @category = category
  end
end

# dish = Dish.new("Couscous Salad", :appetizer)
