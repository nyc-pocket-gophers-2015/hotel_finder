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
    hotels.sort{|hotel_a, hotel_b| hotel_b.pricehi <=> hotel_a.pricehi} #may need to change attribute name
  end

  def order_by_price_lo
    hotels.sort_by{|hotel| hotel.pricelo} #may need to change attribute name
  end

  def filter_by_rating(checked_rating)
    hotels.select { |hotel| hotel.rating == checked_rating }
  end

  def filter_by_name(string)
    hotels.select { |hotel| hotel.name.downcase.include?(string.downcase)}
  end

  def filter_by_price_lo(checked_price)
    hotels.select { |hotel| hotel.pricelo <= checked_price }
  end

end
