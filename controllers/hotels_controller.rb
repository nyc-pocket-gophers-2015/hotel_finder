require_relative "../models/list.rb"
require_relative "../models/hotel.rb"
require_relative "../helpers/parser.rb"

class HotelController

  attr_reader :list

  def load (city,state)
    result = Parser.parser_url(city,state)
    hotels = result.map{|hotel| Hotel.new(hotel)}
    @list = List.new(hotels)
  end

  def setup
      View.display_welcome
      get_user_inputs
  end

  def get_user_inputs
    View.display "Enter a City :"
    city = View.get_input
    View.display "Enter a State : "
    state = View.get_input
    load(city,state)
    View.display list
    View.display options
  end

  def options

  end

end


runner = HotelController.new
runner.load("Hemet","CA")
puts runner.list.hotels.first.name
