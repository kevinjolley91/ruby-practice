require "./module.rb"

class Item
  include Properties
  attr_reader :item_type, :color, :price

  attr_writer :price
end
