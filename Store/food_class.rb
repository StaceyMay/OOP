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