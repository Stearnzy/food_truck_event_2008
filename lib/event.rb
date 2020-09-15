class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |truck|
      truck.inventory.keys.include?(item)
    end
  end

  def all_items
    items = @food_trucks.map do |truck|
      truck.inventory.keys
    end.flatten
    items.uniq
  end

  def blank_event_inventory
    event_inventory = Hash.new(0)
    all_items.each do |item|
      event_inventory[item] = {}
    end
    event_inventory
  end

  def inventories_record(item)
    count = 0
    @food_trucks.each do |truck|
      count += truck.check_stock(item)
    end
    inventories = {quantity: count, food_trucks: food_trucks_that_sell(item)}
  end

  def total_inventory
    complete = {}
    all_items.each do |item|
      complete[item] = inventories_record(item)
    end
    complete
  end

  def sorted_item_list
    all_items.map do |item|
      item.name
    end.sort
  end
end