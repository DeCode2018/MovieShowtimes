class CommandLineInterface


  def greet
    puts "Welcome to MovieShowtime!!!"
  end

  def menu
    puts "******************************"
    puts "Enter the menu # to select"
    puts "1. Create Theater"
    puts "2. List available movies"
    puts "3. List available theaters"
    puts "4. List available showtimes"
    puts "5. Update theater info"
    puts "6. Delete Showtime"
    puts "7. Delete Movie"
    puts "8. Delete Theater"
    puts "******************************"
  end

  def get_user_input
    input = gets.chomp

    case input
      when "1"
      menu_1

      when "2"
      menu_2

      when "3"
      menu_3

      when "4"
      menu_4

      when "5"
      menu_5

      when "6"
      menu_6

      when "7"
      menu_7

      when "8"
      menu_8
    end
  end

  def menu_1
    puts "What is the new theater's name?"
    new_theater_name = gets.chomp
    puts "What is the address for #{new_theater_name}?"
    new_theater_address = gets.chomp
    puts "What is the website for #{new_theater_name}"
    new_theater_website = gets.chomp

    Theater.create(theater_name: new_theater_name, address: new_theater_address, website: new_theater_website)
    puts "**********************"
    puts "This is your new theater:"
    puts "#{new_theater_name}"
    puts "#{new_theater_address}"
    puts "#{new_theater_website}"
    puts "**********************"
  end

  def menu_2

  end

  def menu_3
    puts "What theater are you entering showtime for?"
    theater_name = gets.chomp
    puts "What movie are you entering a showtime for?"
    movie_name = gets.chomp
    puts "Enter showtime in format [hh:mm am/pm]"
    showtime = gets.chomp

    puts "theater name = #{theater_name}, movie name = #{movie_name}, showtime = #{showtime}"
  end

  def menu_4

  end

  def menu_5

  end

  def menu_6

  end

  def menu_7

  end

  def menu_8

  end

  def menu_9

  end

  def menu_10

  end


end
