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
# binding.pry
end

potluck = Potluck.new("7-13-18")
