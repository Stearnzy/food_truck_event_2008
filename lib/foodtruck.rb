class FoodTruck
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory[item].nil?
      0
    else
      @inventory[item]
    end
  end

# May need to alter to add count to existing
#     stock
  def stock(item, item_count)
    @inventory[item] = item_count
  end
end