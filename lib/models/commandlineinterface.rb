class CommandLineInterface


  def greet
    puts "Welcome to MovieShowtime!!!"
  end

  def menu
    puts "******************************"
    puts "Enter the menu # to select"
    puts "1. Create Showtime"
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
      menu_two

      when "3"
      menu_three

      when "4"
      menu_four

      when "5"
      menu_five

      when "6"
      menu_six

      when "7"
      menu_seven

      when "8"
      menu_eight
    end
  end

  def menu_1
    puts "What theater are you entering showtime for?"
    theater_name = gets.chomp
    puts "What movie are you entering a showtime for?"
    movie_name = gets.chomp
    puts "Enter showtime in format [hh:mm am/pm]"
    showtime = gets.chomp

    puts "theater name = #{theater_name}, movie name = #{movie_name}, showtime = #{showtime}"
  end

  def menu_2

  end

  def menu_3

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
