# item1 = { :item_type => "Graphics Card", :color => "RGB", :price => 1400 }
# item2 = { item_type: "CPU", color: "Nickel", price: 570 }
# item3 = { :item_type => "Case", :color => "Black", :price => 180 }

# puts "#{item1[:item_type]} costs #{item1[:price]} and is #{item1[:color]}."
# puts "#{item2[:item_type]} costs #{item2[:price]} and is #{item2[:color]}."
# puts "#{item3[:item_type]} costs #{item3[:price]} and is #{item3[:color]}."

class Item
  def initialize(input_item_type, input_color, input_price)
    @item_type = input_item_type
    @color = input_color
    @price = input_price
  end

  #reader method
  def item_type
    @item_type
  end

  #reader method
  def color
    @color
  end

  #reader method
  def price
    @price
  end

  #setter method
  def price=(new_price)
    @price = new_price
  end
end

Item1 = Item.new("Graphics Card", "RGB", 1400)
Item2 = Item.new("CPU", "nickel", 570)
Item3 = Item.new("Case", "Black", 180)
Item4 = Item.new("RAM", "RGB", 500)

puts Item1.item_type
puts Item1.color
puts Item1.price

Item1.price = 1200
puts Item1.price
