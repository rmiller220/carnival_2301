class Visitor
  attr_reader :spending_money, :preferences
  attr_accessor :number_of_rides, :spending_money
    def initialize(name, height, spending_money)
      @name = name
      @height = height
      @spending_money = spending_money
      @preferences = []
      @number_of_rides = 0
      
    end

    def name
      @name
    end

    def height
      @height
    end

    def spending_money
      @spending_money.gsub(/\D/, '').to_i
    end
    
    def preferences
      @preferences
    end

    def add_preference(prefer)
      @preferences << prefer
    end

    def tall_enough?(num)
      if num == self.height
        if num >= 54
          true
        else
          false
        end
      else
        false
      end
    end
end
