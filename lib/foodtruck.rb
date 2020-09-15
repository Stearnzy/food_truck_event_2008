class FoodTruck
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item, item_count = 0)
    if @inventory[item].nil?
      item_count
    else
      @inventory[item]
    end
  end

  def stock(item, item_count)
    if @inventory[item].nil?
      @inventory[item] = item_count
    else
      @inventory[item] += item_count
    end
  end
end