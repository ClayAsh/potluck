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
end
