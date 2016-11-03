module StoreFront
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
end