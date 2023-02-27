class Ride
  attr_reader :rider_log, :popularity
  def initialize(details)
    @name = details[:name]
    @min_height = details[:min_height]
    @admission_fee = details[:admission_fee]
    @excitement = details[:excitement]
    @rider_log = {}
    @total_revenue = 0
    @popularity = 0

  end

  def name
    @name
  end
  def min_height
    @min_height
  end

  def admission_fee
    @admission_fee
  end
  def excitement
    @excitement
  end
  def popularity
    @popularity
  end
  def total_revenue
    revenue = 0
    @rider_log.each do |rider, num_rides| 
      price = num_rides * self.admission_fee
      revenue += price
    end
    revenue
  end

  def rider_log
    @rider_log
  end

  def board_rider(rider)

    if rider.height >= self.min_height && rider.preferences.include?(self.excitement)
      @popularity += 1
      amount = rider.number_of_rides += 1
      @rider_log[rider] = rider.number_of_rides
      
    else
      false
    end

    if rider.height >= self.min_height && rider.preferences.include?(self.excitement)
      money = rider.spending_money - (rider.number_of_rides * admission_fee)
    else
      false
    end
  end
  def new_rider_money
    new_revenue
  end

end
