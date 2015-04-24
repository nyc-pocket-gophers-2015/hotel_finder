class View

  def display_list(list)
    list.each {|hotel| puts hotel}
  end

  def display_welcome
    puts "Welcome to our SUPER FANTASTIC HOTEL FINDER !!"
  end

  def display_menu_options
    puts "Type 1 to search for a hotel"
    puts "Type 'q' to exit program"
  end

  def display_ask_for_city
    puts "Which city are you staying in ?"
  end

  def display_ask_for_state(city)
    puts "...and in what state is #{city}?"
  end

  def display_sort_options
    puts "Type 'Name' to sort list alphabetically"
    puts "Type 'Rating' to sort list by rating"
    puts "Type 'Price High' to sort list by most expensive"
    puts "Type 'Price Low' to sort list by least expensive"
  end

  def display_current_page(page)
    puts "Displaying page #{page}"
  end
end