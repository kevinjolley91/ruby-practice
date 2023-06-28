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
puts Item2.item_type
puts Item2.color
puts Item2.price
puts Item3.item_type
puts Item3.color
puts Item3.price
puts Item4.item_type
puts Item4.color
puts Item4.price
puts Item5.item_type
puts Item5.color
puts Item5.price

Item1.price = 1200
puts Item1.price
