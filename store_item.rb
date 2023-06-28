class Item
  def initialize(input_item_type, input_color, input_price)
    @item_type = input_item_type
    @color = input_color
    @price = input_price
  end

  attr_reader :item_type, :color, :price

  attr_writer :price
end

Item1 = Item.new("Graphics Card", "RGB", 1400)
Item2 = Item.new("CPU", "nickel", 570)
Item3 = Item.new("Case", "Black", 180)
Item4 = Item.new("RAM", "RGB", 500)
Item5 = Item.new("PSU", "Black", 280)

puts Item1.item_type
puts Item1.color
puts Item1.price

Item1.price = 1200
puts Item1.price
