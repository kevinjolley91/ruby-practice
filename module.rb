module Properties
  attr_reader :item_type, :color, :price

  attr_writer :price

  def initialize(input_options)
    @item_type = input_options[:item_type]
    @color = input_options[:color]
    @price = input_options[:price]
  end
end
