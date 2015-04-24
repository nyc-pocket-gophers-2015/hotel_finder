require_relative "../models/list.rb"
require_relative "../models/hotel.rb"
require_relative "../helpers/parser.rb"

class HotelController

  attr_reader :list

  def load (city,state)
    result = Parser.parser_url(city,state)
    if result.is_a?String
      View.display_error(result)
    else
      hotels = result.map{|hotel| Hotel.new(hotel)}
      @list = List.new(hotels)
    end
  end

  def setup
      View.display_welcome
      View.display_menu_options
      menu_option_selected = View.get_input
      options(menu_option_selected)
  end

  def get_user_inputs
    View.display_ask_for_city
    city = View.get_input
    View.display_ask_for_state(city)
    state = View.get_input
    load(city,state)
    View.display_list(list.hotels)
    View.display_sort_options
    option_selected = View.get_input
    options(option_selected)
  end

  def options(option_selected)
    case option_selected
    when "1" then get_user_inputs
    when "q" then return
    else
      when "name" then list.order_by_name
      when "rating" then list.order_by_rating
      when "price high" then list.order_by_price_hi
      when "price low" then list.order_by_price_lo
      else
          View.display_error("invalid option")
      end
      View.display_list(list.hotels)
    end
  end

end


runner = HotelController.new
runner.load("Hemet","CA")
puts runner.list.hotels.first.name
