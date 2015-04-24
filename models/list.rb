class List

  attr_reader :hotels

  def initialize(args = [])
    @hotels = args
  end

  def order_by_name
    hotels.sort_by!{|hotel| hotel.name}
  end

  def order_by_rating
    hotels.sort!{|hotel_a,hotel_b| hotel_b.hotelRating <=> hotel_a.hotelRating}
  end

  def order_by_price_hi
    hotels.sort!{|hotel_a, hotel_b| hotel_b.highRate <=> hotel_a.highRate} #may need to change attribute name
  end

  def order_by_price_lo
    hotels.sort_by!{|hotel| hotel.lowRate} #may need to change attribute name
  end

  def filter_by_rating(checked_rating)
    hotels.select! { |hotel| hotel.hotelRating == checked_rating }
  end

  def filter_by_name(string)
    hotels.select! { |hotel| hotel.name.downcase.include?(string.downcase)}
  end

  def filter_by_price_lo(checked_price)
    hotels.select! { |hotel| hotel.lowRate <= checked_price }
  end

  def to_s
    hotels.join("\n")
  end

end
