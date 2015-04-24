class List

  attr_reader :hotels

  def initialize(args = [])
    @hotels = args
  end

  def order_by_name
    hotels.sort_by{|hotel| hotel.name}
  end

  def order_by_rating
    hotels.sort_by{|hotel| hotel.rating}
  end

  def order_by_price_hi
    hotels.sort_by{|hotel| hotel.rating}
  end

  def order_by_price_lo

  end

end
