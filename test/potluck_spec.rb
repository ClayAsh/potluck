require './lib/dish'
require './lib/potluck'
require 'rspec'
require 'pry'

RSpec.describe Potluck do
  it "exists" do
    potluck = Potluck.new("7-13-18")
  expect(potluck).to be_an_instance_of(Potluck)
  end

  it "has attributes" do
    potluck = Potluck.new("7-13-18")
    # binding.pry
    expect(potluck.date).to eq("7-13-18")
    expect(potluck.dishes).to eq([])
  end

  describe '#add_dish' do
   it "can add dish" do
    potluck = Potluck.new("7-13-18")
    dish = Dish.new("Couscous Salad", :appetizer)
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    expect(dish).to be_an_instance_of(Dish)
    expect(dish.name).to eq("Couscous Salad")
    expect(dish.category).to eq(:appetizer)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza])
  end

  describe '#get_all_from_category' do
   it "can get all from category" do
    potluck = Potluck.new("7-13-18")
    dish = Dish.new("Couscous Salad", :appetizer)
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    expect(dish).to be_an_instance_of(Dish)
    expect(dish.name).to eq("Couscous Salad")
    expect(dish.category).to eq(:appetizer)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza])
    expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])
    end
  end
  end
end
