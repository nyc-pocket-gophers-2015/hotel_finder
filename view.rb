require 'colorize'

class View

  class << self

    def display_list(list)
      puts list
    end

    def display_welcome
      puts "Welcome to our SUPER FANTASTIC HOTEL FINDER !!".colorize(rand_color)
    end

    def display_menu_options
      display_banner
      puts "Type 1 to start a new search".colorize(rand_color)
      puts "Type 'q' to exit program".colorize(rand_color)
      display_banner
    end

    def display_ask_for_city
      puts "Which city are you staying in ?".colorize(rand_color)
    end

    def display_ask_for_state(city)
      puts "...and in what state is #{city}?".colorize(rand_color)
    end

    def display_sort_options
      puts "Type 'Name' to sort list alphabetically".colorize(rand_color)
      puts "Type 'Rating' to sort list by rating".colorize(rand_color)
      puts "Type 'Price High' to sort list by most expensive".colorize(rand_color)
      puts "Type 'Price Low' to sort list by least expensive".colorize(rand_color)
    end

    def display_current_page(page)
      puts "Displaying page #{page}".colorize(rand_color)
    end

    def get_input
      gets.chomp.downcase
    end

    def display_error(error)
      puts "Sorry, I didn't understand... \n#{error}. \nPlease try again:".colorize(rand_color)
    end

    def display_banner
      40.times { print '*'.colorize(rand_color) }
      puts
    end

    def rand_color
      my_colors = [:red, :green, :blue, :yellow,:cyan]
      my_colors[rand(0..my_colors.length)]
    end
  end

end
