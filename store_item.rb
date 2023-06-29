require "./module.rb"

class Item
  include Properties
end

Item1 = Item.new(item_type: "Graphics Card", color: "RGB", price: 1400)
Item2 = Item.new(item_type: "CPU", color: "nickel", price: 570)
Item3 = Item.new(item_type: "Case", color: "Black", price: 180)

puts Item1.item_type
puts Item1.color
puts Item1.price

Item1.price = 1200
puts Item1.price
