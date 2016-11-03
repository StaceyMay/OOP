#cookies = {price: 2, type: 'dessert', health: 'bad'}
#juice = {:price => 1, :type => 'drinks', :health => 'good'}
#grapes = {price: 4, type: 'fruit', health: 'good'}

#puts "You bought #{juice[:type]}"
#puts "Price is #{juice[:price]}"
#puts "The health of item is " + juice[:health]

class Items
  attr_accessor :price, :type, :health

  def initialize(input_options)
    @price = input_options[:price] || 2
    @type = input_options[:type] || "drink"
    @health = input_options[:health] || "unhealthy"
  end 

  def price
    return @price
  end

  def type
    return @type
  end 

  def health
    return @health
  end

end

class Food < Items
  attr_reader :price

  def initialize(input_options)
    super(input_options)
    @shelf_life = input_options[:shelf_life]
  end

  def shelf_life
    @shelf_life = @price * 2
  end

end

# grapes = Items.new(4,"fruit","healthy")
# juice = Items.new(1,"drinks","healthy")
# cookies = Items.new(2,"dessert","unhealthy")
# water = Items.new({type: "drink",health: "very healthy", price: 1})

# puts water.price
# puts water.type
# puts water.health

bok_choy = Food.new({})

puts bok_choy.shelf_life