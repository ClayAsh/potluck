require './lib/dish'
require './lib/potluck'
require 'rspec'
require 'pry'

class Potluck
  attr_reader :date, :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end

  def get_all_from_category(category)
    same_cat =
    @dishes.find_all do |dish|
      dish.category == category
    end
    return same_cat
  end
end
