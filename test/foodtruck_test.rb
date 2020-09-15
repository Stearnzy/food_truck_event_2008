require "minitest/autorun"
require "minitest/pride"
require "./lib/foodtruck"

class FoodTruckTest < Minitest::Test
  def test_it_exists
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    assert_instance_of FoodTruck, food_truck
  end
end